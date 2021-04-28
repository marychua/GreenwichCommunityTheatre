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


namespace GreenwichCommunityTheatre
{
    public partial class BookSeat : System.Web.UI.Page
    {
        static int[] bookedseat;
        static int[] tempbookseat; 
        static Button[] btnarray;
        int[] x;
        private int c = 0;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["username"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                usertxt.Text = Session["username"].ToString();
            }

            btnarray = new Button[] {A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,
                                         A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,
                                         A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,
                                         A31,A32,A33,A34,A35,A36,A37,A38,A39,A40,
                                         A41,A42,A43,A44,A45,A46,A47,A48,A49,A50,
                                         A51,A52,A53,A54,A55,A56,A57,A58,A59,A60,
                                         A61,A62,A63,A64,A65,A66,A67,A68,A69,A70,
                                         A71,A72,A73,A74,A75,A76,A77,A78,A79,A80,
                                         A81,A82,A83,A84 };

            x = new int[] {1,2,3,4,5,6,7,8,9,10,
                                         11,12,13,14,15,16,17,18,19,20,
                                         21,22,23,24,25,26,27,28,29,30,
                                         31,32,33,34,35,36,37,38,39,40,
                                         41,42,43,44,45,46,47,48,49,50,
                                         51,52,53,54,55,56,57,58,59,60,
                                         61,62,63,64,65,66,67,68,69,70,
                                         71,72,73,74,75,76,77,78,79,80,
                                         81,82,83,84 };

            if (!IsPostBack)
            {
                bookedseat = new int[84];                
                tempbookseat = new int[] {1,2,3,4,5,6,7,8,9,10,
                                         11,12,13,14,15,16,17,18,19,20,
                                         21,22,23,24,25,26,27,28,29,30,
                                         31,32,33,34,35,36,37,38,39,40,
                                         41,42,43,44,45,46,47,48,49,50,
                                         51,52,53,54,55,56,57,58,59,60,
                                         61,62,63,64,65,66,67,68,69,70,
                                         71,72,73,74,75,76,77,78,79,80,
                                         81,82,83,84 };
                for (int j = 0; j <84; j++)
                {
                    tempbookseat[j] = 0;
                }
                
                Alreadybooked();
               
                all();
                Label6.Text = Session["Value"].ToString();



                ///////////////
               
            }
            
        }
        
        private void Choosenseat(Button btn)
        {

            if (btn.BackColor == System.Drawing.Color.Green )
            {
                //TextBox1.Text = btn.ID.ToString();
                if (TextBox3.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    TextBox3.Text = TextBox3.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    TextBox3.Text = TextBox3.Text.Replace(btn.ID.ToString(), "");

                }

            }
            else if (btn.BackColor == System.Drawing.Color.Black)
            {


                if (TextBox3.Text.Trim().Length == 0)
                {
                    TextBox3.Text = btn.ID.ToString();
                }
                else if (TextBox3.Text.Trim().EndsWith(","))
                {
                    TextBox3.Text = TextBox3.Text + btn.ID.ToString();
                }
                else
                {
                    TextBox3.Text = TextBox3.Text + "," + btn.ID.ToString();
                }
            }

        }


        private void Alreadybooked()
        {
            String mycon = "Server=localhost\\SQLEXPRESS;Database=GCT;Trusted_Connection=True";
            String myquery = "Select * from SeatStatus";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rows = ds.Tables[0].Rows.Count;
            int i = 0;
            int x = 0;
            
            while (i < rows)
            {
                String status;
                status = ds.Tables[0].Rows[i]["status"].ToString();
                if (status == "B")
                {
                    //bookedseat[i] = 1;
                    if (i< btnarray.Length)
                    {
                        bookedseat[i] = 1;
                        btnarray[i].BackColor = Color.Red;
                        btnarray[i].Enabled = false;

                    }

                }

                if (status == "A")
                {
                    //bookedseat[i] = 0;
                    if (i < btnarray.Length)
                    {
                        bookedseat[i] = 0;
                        btnarray[i].BackColor = Color.Black;
                        
                    }
                    
                }

                i++;
                x++;


            }
        }
        

        private void all()
        {
            
            Random rnd = new Random();
            Random rnd1 = new Random();

            Label5.Text = rnd.Next(100).ToString() + rnd1.Next(50).ToString();
            

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Choosenseat(A1);
            
          
           
            if (tempbookseat[0] == 0)
            {
                A1.BackColor = Color.Green;
                tempbookseat[0] = 1;
                
                
            }
            else
            {
                A1.BackColor = Color.Black;
                tempbookseat[0] = 0;

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Choosenseat(A2);
            
           
            if (tempbookseat[1] == 0)
            {
                A2.BackColor = Color.Green;
                tempbookseat[1] = 1;
               
            }
            else
            {
                A2.BackColor = Color.Black;
                tempbookseat[1] = 0;
                
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Choosenseat(A3);
            
            if (tempbookseat[2] == 0)
            {
                A3.BackColor = Color.Green;
                tempbookseat[2] = 1; 
            }
            else
            {
                A3.BackColor = Color.Black;
                tempbookseat[2] = 0;
            }
            
        }

        protected void A4_Click(object sender, EventArgs e)
        {
            Choosenseat(A4);
            

            if (tempbookseat[3] == 0)
            {
                A4.BackColor = Color.Green;
                tempbookseat[3] = 1;
                //ListBox1.Items.Add(Label7.Text);  
            }
            else
            {
                A4.BackColor = Color.Black;
                tempbookseat[3] = 0;
               // ListBox1.Items.Remove(Label7.Text);
            }
          
        }

        protected void A5_Click(object sender, EventArgs e)
        {
            Choosenseat(A5);
            
            if (tempbookseat[4] == 0)
            {
                A5.BackColor = Color.Green;
                tempbookseat[4] = 1;
               // ListBox1.Items.Add(Label7.Text);
            }
            else
            {
                A5.BackColor = Color.Black;
                tempbookseat[4] = 0;
              //  ListBox1.Items.Remove(Label7.Text);
            }
           
        }

        protected void A6_Click(object sender, EventArgs e)
        {
            Choosenseat(A6);
           
            
            if (tempbookseat[5] == 0)
            {
                A6.BackColor = Color.Green;
                tempbookseat[5] = 1;

            }
            else
            {
                A6.BackColor = Color.Black;
                tempbookseat[5] = 0;
            }

        }

        protected void A7_Click(object sender, EventArgs e)
        {
            Choosenseat(A7);
            
           
            if (tempbookseat[6] == 0)
            {
                A7.BackColor = Color.Green;
                tempbookseat[6] = 1;
                //ListBox1.Items.Add(Label7.Text);
            }
            else
            {
                A7.BackColor = Color.Black;
                tempbookseat[6] = 0;
               // ListBox1.Items.Remove(Label7.Text);
            }

        }

        protected void A8_Click(object sender, EventArgs e)
        {
            Choosenseat(A8);
            
            if (tempbookseat[7] == 0)
            {
                A8.BackColor = Color.Green;
                tempbookseat[7] = 1;
             //  ListBox1.Items.Add(Label7.Text);

            }
            else
            {
                A8.BackColor = Color.Black;
                tempbookseat[7] = 0;
              //  ListBox1.Items.Remove(Label7.Text);
            }

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Choosenseat(A9);
            if (tempbookseat[8] == 0)
            {
                A9.BackColor = Color.Green;
                tempbookseat[8] = 1;

            }
            else
            {
                A9.BackColor = Color.Black;
                tempbookseat[8] = 0;
            }
        }

        protected void A10_Click(object sender, EventArgs e)
        {
            Choosenseat(A10);
            if (tempbookseat[9] == 0)
            {
                A10.BackColor = Color.Green;
                tempbookseat[9] = 1;

            }
            else
            {
                A10.BackColor = Color.Black;
                tempbookseat[9] = 0;
            }
        }

        protected void A11_Click(object sender, EventArgs e)
        {
            Choosenseat(A11);
            if (tempbookseat[10] == 0)
            {
                A11.BackColor = Color.Green;
                tempbookseat[10] = 1;

            }
            else
            {
                A11.BackColor = Color.Black;
                tempbookseat[10] = 0;
            }
        }

        protected void A12_Click(object sender, EventArgs e)
        {
            Choosenseat(A12);
            if (tempbookseat[11] == 0)
            {
                A12.BackColor = Color.Green;
                tempbookseat[11] = 1;

            }
            else
            {
                A12.BackColor = Color.Black;
                tempbookseat[11] = 0;
            }
        }

        protected void A13_Click(object sender, EventArgs e)
        {
            Choosenseat(A13);
            if (tempbookseat[12] == 0)
            {
                A13.BackColor = Color.Green;
                tempbookseat[12] = 1;

            }
            else
            {
                A13.BackColor = Color.Black;
                tempbookseat[12] = 0;
            }
        }

        protected void A14_Click(object sender, EventArgs e)
        {
            Choosenseat(A14);
            if (tempbookseat[13] == 0)
            {
                A14.BackColor = Color.Green;
                tempbookseat[13] = 1;

            }
            else
            {
                A14.BackColor = Color.Black;
                tempbookseat[13] = 0;
            }
        }

        protected void A15_Click(object sender, EventArgs e)
        {
             Choosenseat(A15);
            if (tempbookseat[14] == 0)
            {
                A15.BackColor = Color.Green;
                tempbookseat[14] = 1;

            }
            else
            {
                A15.BackColor = Color.Black;
                tempbookseat[14] = 0;
            }
        }

        protected void A16_Click(object sender, EventArgs e)
        {
            Choosenseat(A16);
            if (tempbookseat[15] == 0)
            {
                A16.BackColor = Color.Green;
                tempbookseat[15] = 1;

            }
            else
            {
                A16.BackColor = Color.Black;
                tempbookseat[15] = 0;
            }
        }

        protected void A17_Click(object sender, EventArgs e)
        {
            Choosenseat(A17);
            if (tempbookseat[16] == 0)
            {
                A17.BackColor = Color.Green;
                tempbookseat[16] = 1;

            }
            else
            {
                A17.BackColor = Color.Black;
                tempbookseat[16] = 0;
            }
        }

        protected void A18_Click(object sender, EventArgs e)
        {
            Choosenseat(A18);
            if (tempbookseat[17] == 0)
            {
                A18.BackColor = Color.Green;
                tempbookseat[17] = 1;

            }
            else
            {
                A18.BackColor = Color.Black;
                tempbookseat[17] = 0;
            }
        }

        protected void A19_Click(object sender, EventArgs e)
        {
            Choosenseat(A19);
            if (tempbookseat[18] == 0)
            {
                A19.BackColor = Color.Green;
                tempbookseat[18] = 1;

            }
            else
            {
                A19.BackColor = Color.Black;
                tempbookseat[18] = 0;
            }
        }

        protected void A20_Click(object sender, EventArgs e)
        {
            Choosenseat(A20);
            if (tempbookseat[19] == 0)
            {
                A20.BackColor = Color.Green;
                tempbookseat[19] = 1;

            }
            else
            {
                A20.BackColor = Color.Black;
                tempbookseat[19] = 0;
            }
        }

        protected void A21_Click(object sender, EventArgs e)
        {
            Choosenseat(A21);
            if (tempbookseat[20] == 0)
            {
                A21.BackColor = Color.Green;
                tempbookseat[20] = 1;

            }
            else
            {
                A21.BackColor = Color.Black;
                tempbookseat[20] = 0;
            }
        }

        protected void A22_Click(object sender, EventArgs e)
        {
            Choosenseat(A22);
            if (tempbookseat[21] == 0)
            {
                A22.BackColor = Color.Green;
                tempbookseat[21] = 1;

            }
            else
            {
                A22.BackColor = Color.Black;
                tempbookseat[21] = 0;
            }
        }

        protected void A23_Click(object sender, EventArgs e)
        {
            Choosenseat(A23);
            if (tempbookseat[22] == 0)
            {
                A23.BackColor = Color.Green;
                tempbookseat[22] = 1;

            }
            else
            {
                A23.BackColor = Color.Black;
                tempbookseat[22] = 0;
            }
        }

        protected void A24_Click(object sender, EventArgs e)
        {
            Choosenseat(A24);
            if (tempbookseat[23] == 0)
            {
                A24.BackColor = Color.Green;
                tempbookseat[23] = 1;

            }
            else
            {
                A24.BackColor = Color.Black;
                tempbookseat[23] = 0;
            }
        }

        protected void A25_Click(object sender, EventArgs e)
        {
            Choosenseat(A25);
            if (tempbookseat[24] == 0)
            {
                A25.BackColor = Color.Green;
                tempbookseat[24] = 1;

            }
            else
            {
                A25.BackColor = Color.Black;
                tempbookseat[24] = 0;
            }
        }

        protected void A26_Click(object sender, EventArgs e)
        {
            Choosenseat(A26);
            if (tempbookseat[25] == 0)
            {
                A26.BackColor = Color.Green;
                tempbookseat[25] = 1;

            }
            else
            {
                A26.BackColor = Color.Black;
                tempbookseat[25] = 0;
            }
        }

        protected void A27_Click(object sender, EventArgs e)
        {
            Choosenseat(A27);
            if (tempbookseat[26] == 0)
            {
                A27.BackColor = Color.Green;
                tempbookseat[26] = 1;

            }
            else
            {
                A27.BackColor = Color.Black;
                tempbookseat[26] = 0;
            }
        }

        protected void A28_Click(object sender, EventArgs e)
        {
            Choosenseat(A28);
            if (tempbookseat[27] == 0)
            {
                A28.BackColor = Color.Green;
                tempbookseat[27] = 1;

            }
            else
            {
                A28.BackColor = Color.Black;
                tempbookseat[27] = 0;
            }
        }

        protected void A29_Click(object sender, EventArgs e)
        {
            Choosenseat(A29);
            if (tempbookseat[28] == 0)
            {
                A29.BackColor = Color.Green;
                tempbookseat[28] = 1;

            }
            else
            {
                A29.BackColor = Color.Black;
                tempbookseat[28] = 0;
            }
        }

        protected void A30_Click(object sender, EventArgs e)
        {
            Choosenseat(A30);
            if (tempbookseat[29] == 0)
            {
                A30.BackColor = Color.Green;
                tempbookseat[29] = 1;

            }
            else
            {
                A30.BackColor = Color.Black;
                tempbookseat[29] = 0;
            }
        }

        protected void A31_Click(object sender, EventArgs e)
        {
            Choosenseat(A31);
            if (tempbookseat[30] == 0)
            {
                A31.BackColor = Color.Green;
                tempbookseat[30] = 1;

            }
            else
            {
                A31.BackColor = Color.Black;
                tempbookseat[30] = 0;
            }
        }

        protected void A32_Click(object sender, EventArgs e)
        {
            Choosenseat(A32);
            if (tempbookseat[31] == 0)
            {
                A32.BackColor = Color.Green;
                tempbookseat[31] = 1;

            }
            else
            {
                A32.BackColor = Color.Black;
                tempbookseat[31] = 0;
            }
        }

        protected void A33_Click(object sender, EventArgs e)
        {
            Choosenseat(A33);
            if (tempbookseat[32] == 0)
            {
                A33.BackColor = Color.Green;
                tempbookseat[32] = 1;

            }
            else
            {
                A33.BackColor = Color.Black;
                tempbookseat[32] = 0;
            }
        }

        protected void A34_Click(object sender, EventArgs e)
        {
            Choosenseat(A34);
            if (tempbookseat[33] == 0)
            {
                A34.BackColor = Color.Green;
                tempbookseat[33] = 1;

            }
            else
            {
                A34.BackColor = Color.Black;
                tempbookseat[33] = 0;
            }
        }

        protected void A35_Click(object sender, EventArgs e)
        {
            Choosenseat(A35);
            if (tempbookseat[34] == 0)
            {
                A35.BackColor = Color.Green;
                tempbookseat[34] = 1;

            }
            else
            {
                A35.BackColor = Color.Black;
                tempbookseat[34] = 0;
            }
        }

        protected void A36_Click(object sender, EventArgs e)
        {
            Choosenseat(A36);
            if (tempbookseat[35] == 0)
            {
                A36.BackColor = Color.Green;
                tempbookseat[35] = 1;

            }
            else
            {
                A36.BackColor = Color.Black;
                tempbookseat[35] = 0;
            }
        }

        protected void A37_Click(object sender, EventArgs e)
        {
            Choosenseat(A37);
            if (tempbookseat[36] == 0)
            {
                A37.BackColor = Color.Green;
                tempbookseat[36] = 1;

            }
            else
            {
                A37.BackColor = Color.Black;
                tempbookseat[36] = 0;
            }
        }

        protected void A38_Click(object sender, EventArgs e)
        {
            Choosenseat(A38);
            if (tempbookseat[37] == 0)
            {
                A38.BackColor = Color.Green;
                tempbookseat[37] = 1;

            }
            else
            {
                A38.BackColor = Color.Black;
                tempbookseat[37] = 0;
            }
        }

        protected void A39_Click(object sender, EventArgs e)
        {
            Choosenseat(A39);
            if (tempbookseat[38] == 0)
            {
                A39.BackColor = Color.Green;
                tempbookseat[38] = 1;

            }
            else
            {
                A39.BackColor = Color.Black;
                tempbookseat[38] = 0;
            }
        }

        protected void A40_Click(object sender, EventArgs e)
        {
            Choosenseat(A40);
            if (tempbookseat[39] == 0)
            {
                A40.BackColor = Color.Green;
                tempbookseat[39] = 1;

            }
            else
            {
                A40.BackColor = Color.Black;
                tempbookseat[39] = 0;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox3.Text!= "")
            {
                string[] str = TextBox3.Text.Split('A');
                int len = str.Length - 1;
                TextBox2.Text = len.ToString();
            }
            

        }

   

       

        protected void A41_Click(object sender, EventArgs e)
        {
            Choosenseat(A41);
            if (tempbookseat[40] == 0)
            {
                A41.BackColor = Color.Green;
                tempbookseat[40] = 1;

            }
            else
            {
                A41.BackColor = Color.Black;
                tempbookseat[40] = 0;
            }
        }

        protected void A42_Click(object sender, EventArgs e)
        {
            Choosenseat(A42);
            if (tempbookseat[41] == 0)
            {
                A42.BackColor = Color.Green;
                tempbookseat[41] = 1;

            }
            else
            {
                A42.BackColor = Color.Black;
                tempbookseat[41] = 0;
            }
        }

        protected void A43_Click(object sender, EventArgs e)
        {
            Choosenseat(A43);
            if (tempbookseat[42] == 0)
            {
                A43.BackColor = Color.Green;
                tempbookseat[42] = 1;

            }
            else
            {
                A43.BackColor = Color.Black;
                tempbookseat[42] = 0;
            }
        }

        protected void A44_Click(object sender, EventArgs e)
        {
            Choosenseat(A44);
            if (tempbookseat[43] == 0)
            {
                A44.BackColor = Color.Green;
                tempbookseat[43] = 1;

            }
            else
            {
                A44.BackColor = Color.Black;
                tempbookseat[43] = 0;
            }
        }

        protected void A45_Click(object sender, EventArgs e)
        {
            Choosenseat(A45);
            if (tempbookseat[44] == 0)
            {
                A45.BackColor = Color.Green;
                tempbookseat[44] = 1;

            }
            else
            {
                A45.BackColor = Color.Black;
                tempbookseat[44] = 0;
            }
        }

        protected void A46_Click(object sender, EventArgs e)
        {
            Choosenseat(A46);
            if (tempbookseat[45] == 0)
            {
                A46.BackColor = Color.Green;
                tempbookseat[45] = 1;

            }
            else
            {
                A46.BackColor = Color.Black;
                tempbookseat[45] = 0;
            }
        }

        protected void A47_Click(object sender, EventArgs e)
        {
            Choosenseat(A47);
            if (tempbookseat[46] == 0)
            {
                A47.BackColor = Color.Green;
                tempbookseat[46] = 1;

            }
            else
            {
                A47.BackColor = Color.Black;
                tempbookseat[46] = 0;
            }
        }

        protected void A48_Click(object sender, EventArgs e)
        {
            Choosenseat(A48);
            if (tempbookseat[47] == 0)
            {
                A48.BackColor = Color.Green;
                tempbookseat[47] = 1;

            }
            else
            {
                A48.BackColor = Color.Black;
                tempbookseat[47] = 0;
            }
        }

        protected void A49_Click(object sender, EventArgs e)
        {
            Choosenseat(A49);
            if (tempbookseat[48] == 0)
            {
                A49.BackColor = Color.Green;
                tempbookseat[48] = 1;

            }
            else
            {
                A49.BackColor = Color.Black;
                tempbookseat[48] = 0;
            }
        }

        protected void A50_Click(object sender, EventArgs e)
        {
            Choosenseat(A50);
            if (tempbookseat[49] == 0)
            {
                A50.BackColor = Color.Green;
                tempbookseat[49] = 1;

            }
            else
            {
                A50.BackColor = Color.Black;
                tempbookseat[49] = 0;
            }
        }

        protected void A51_Click(object sender, EventArgs e)
        {
            Choosenseat(A51);
            if (tempbookseat[50] == 0)
            {
                A51.BackColor = Color.Green;
                tempbookseat[50] = 1;

            }
            else
            {
                A51.BackColor = Color.Black;
                tempbookseat[50] = 0;
            }
        }

        protected void A52_Click(object sender, EventArgs e)
        {
            Choosenseat(A52);
            if (tempbookseat[51] == 0)
            {
                A52.BackColor = Color.Green;
                tempbookseat[51] = 1;

            }
            else
            {
                A52.BackColor = Color.Black;
                tempbookseat[51] = 0;
            }
        }

        protected void A53_Click(object sender, EventArgs e)
        {
            Choosenseat(A53);
            if (tempbookseat[52] == 0)
            {
                A53.BackColor = Color.Green;
                tempbookseat[52] = 1;

            }
            else
            {
                A53.BackColor = Color.Black;
                tempbookseat[52] = 0;
            }
        }

        protected void A54_Click(object sender, EventArgs e)
        {
            Choosenseat(A54);
            if (tempbookseat[53] == 0)
            {
                A54.BackColor = Color.Green;
                tempbookseat[53] = 1;

            }
            else
            {
                A54.BackColor = Color.Black;
                tempbookseat[53] = 0;
            }
        }

        protected void A56_Click(object sender, EventArgs e)
        {
            Choosenseat(A56);
            if (tempbookseat[55] == 0)
            {
                A56.BackColor = Color.Green;
                tempbookseat[55] = 1;

            }
            else
            {
                A56.BackColor = Color.Black;
                tempbookseat[55] = 0;
            }
        }

        protected void A57_Click(object sender, EventArgs e)
        {
            Choosenseat(A57);
            if (tempbookseat[56] == 0)
            {
                A57.BackColor = Color.Green;
                tempbookseat[56] = 1;

            }
            else
            {
                A57.BackColor = Color.Black;
                tempbookseat[56] = 0;
            }
        }

        protected void A58_Click(object sender, EventArgs e)
        {
            Choosenseat(A58);
            if (tempbookseat[57] == 0)
            {
                A58.BackColor = Color.Green;
                tempbookseat[57] = 1;

            }
            else
            {
                A58.BackColor = Color.Black;
                tempbookseat[57] = 0;
            }
        }

        protected void A59_Click(object sender, EventArgs e)
        {
            Choosenseat(A59);
            if (tempbookseat[58] == 0)
            {
                A59.BackColor = Color.Green;
                tempbookseat[58] = 1;

            }
            else
            {
                A59.BackColor = Color.Black;
                tempbookseat[58] = 0;
            }
        }

        protected void A60_Click(object sender, EventArgs e)
        {
            Choosenseat(A60);
            if (tempbookseat[59] == 0)
            {
                A60.BackColor = Color.Green;
                tempbookseat[59] = 1;

            }
            else
            {
                A60.BackColor = Color.Black;
                tempbookseat[59] = 0;
            }
        }

        protected void A61_Click(object sender, EventArgs e)
        {
            Choosenseat(A61);
            if (tempbookseat[60] == 0)
            {
                A61.BackColor = Color.Green;
                tempbookseat[60] = 1;

            }
            else
            {
                A61.BackColor = Color.Black;
                tempbookseat[60] = 0;
            }
        }

        protected void A62_Click(object sender, EventArgs e)
        {
            Choosenseat(A62);
            if (tempbookseat[61] == 0)
            {
                A62.BackColor = Color.Green;
                tempbookseat[61] = 1;

            }
            else
            {
                A62.BackColor = Color.Black;
                tempbookseat[61] = 0;
            }
        }

      
        protected void A63_Click(object sender, EventArgs e)
        {
            Choosenseat(A63);
            if (tempbookseat[62] == 0)
            {
                A63.BackColor = Color.Green;
                tempbookseat[62] = 1;

            }
            else
            {
                A63.BackColor = Color.Black;
                tempbookseat[62] = 0;
            }
        }

        protected void A64_Click(object sender, EventArgs e)
        {
            Choosenseat(A64);
            if (tempbookseat[63] == 0)
            {
                A64.BackColor = Color.Green;
                tempbookseat[63] = 1;

            }
            else
            {
                A64.BackColor = Color.Black;
                tempbookseat[63] = 0;
            }
        }

        protected void A65_Click(object sender, EventArgs e)
        {
            Choosenseat(A65);
            if (tempbookseat[64] == 0)
            {
                A65.BackColor = Color.Green;
                tempbookseat[64] = 1;

            }
            else
            {
                A65.BackColor = Color.Black;
                tempbookseat[64] = 0;
            }
        }

        protected void A66_Click(object sender, EventArgs e)
        {
            Choosenseat(A66);
            if (tempbookseat[65] == 0)
            {
                A66.BackColor = Color.Green;
                tempbookseat[65] = 1;

            }
            else
            {
                A66.BackColor = Color.Black;
                tempbookseat[65] = 0;
            }
        }

        protected void A67_Click(object sender, EventArgs e)
        {
            Choosenseat(A67);
            if (tempbookseat[66] == 0)
            {
                A67.BackColor = Color.Green;
                tempbookseat[66] = 1;

            }
            else
            {
                A67.BackColor = Color.Black;
                tempbookseat[66] = 0;
            }
        }

        protected void A68_Click(object sender, EventArgs e)
        {
            Choosenseat(A68);
            if (tempbookseat[67] == 0)
            {
                A68.BackColor = Color.Green;
                tempbookseat[67] = 1;

            }
            else
            {
                A68.BackColor = Color.Black;
                tempbookseat[67] = 0;
            }
        }

        protected void A69_Click(object sender, EventArgs e)
        {
            Choosenseat(A69);
            if (tempbookseat[68] == 0)
            {
                A69.BackColor = Color.Green;
                tempbookseat[68] = 1;

            }
            else
            {
                A69.BackColor = Color.Black;
                tempbookseat[68] = 0;
            }
        }

        protected void A70_Click(object sender, EventArgs e)
        {
            Choosenseat(A70);
            if (tempbookseat[69] == 0)
            {
                A70.BackColor = Color.Green;
                tempbookseat[69] = 1;

            }
            else
            {
                A70.BackColor = Color.Black;
                tempbookseat[69] = 0;
            }
        }

        protected void A71_Click(object sender, EventArgs e)
        {
            Choosenseat(A71);
            if (tempbookseat[70] == 0)
            {
                A71.BackColor = Color.Green;
                tempbookseat[70] = 1;

            }
            else
            {
                A71.BackColor = Color.Black;
                tempbookseat[70] = 0;
            }
        }

        protected void A72_Click(object sender, EventArgs e)
        {
            Choosenseat(A72);
            if (tempbookseat[71] == 0)
            {
                A72.BackColor = Color.Green;
                tempbookseat[71] = 1;

            }
            else
            {
                A72.BackColor = Color.Black;
                tempbookseat[71] = 0;
            }
        }

        protected void A73_Click(object sender, EventArgs e)
        {
            Choosenseat(A73);
            if (tempbookseat[72] == 0)
            {
                A73.BackColor = Color.Green;
                tempbookseat[72] = 1;

            }
            else
            {
                A73.BackColor = Color.Black;
                tempbookseat[72] = 0;
            }
        }

        protected void A74_Click(object sender, EventArgs e)
        {
            Choosenseat(A74);
            if (tempbookseat[73] == 0)
            {
                A74.BackColor = Color.Green;
                tempbookseat[73] = 1;

            }
            else
            {
                A74.BackColor = Color.Black;
                tempbookseat[73] = 0;
            }
        }

        protected void A75_Click(object sender, EventArgs e)
        {
            Choosenseat(A75);
            if (tempbookseat[74] == 0)
            {
                A75.BackColor = Color.Green;
                tempbookseat[74] = 1;

            }
            else
            {
                A75.BackColor = Color.Black;
                tempbookseat[74] = 0;
            }
        }

        protected void A76_Click(object sender, EventArgs e)
        {
            Choosenseat(A76);
            if (tempbookseat[75] == 0)
            {
                A76.BackColor = Color.Green;
                tempbookseat[75] = 1;

            }
            else
            {
                A76.BackColor = Color.Black;
                tempbookseat[75] = 0;
            }
        }

        protected void A77_Click(object sender, EventArgs e)
        {
            Choosenseat(A77);
            if (tempbookseat[76] == 0)
            {
                A77.BackColor = Color.Green;
                tempbookseat[76] = 1;

            }
            else
            {
                A77.BackColor = Color.Black;
                tempbookseat[76] = 0;
            }
        }

        protected void A78_Click(object sender, EventArgs e)
        {
            Choosenseat(A78);
            if (tempbookseat[77] == 0)
            {
                A78.BackColor = Color.Green;
                tempbookseat[77] = 1;

            }
            else
            {
                A78.BackColor = Color.Black;
                tempbookseat[77] = 0;
            }
        }

        protected void A79_Click(object sender, EventArgs e)
        {
            Choosenseat(A79);
            if (tempbookseat[78] == 0)
            {
                A79.BackColor = Color.Green;
                tempbookseat[78] = 1;

            }
            else
            {
                A79.BackColor = Color.Black;
                tempbookseat[78] = 0;
            }
        }

        protected void A80_Click(object sender, EventArgs e)
        {
            Choosenseat(A80);
            if (tempbookseat[79] == 0)
            {
                A80.BackColor = Color.Green;
                tempbookseat[79] = 1;

            }
            else
            {
                A80.BackColor = Color.Black;
                tempbookseat[79] = 0;
            }
        }

        protected void A81_Click(object sender, EventArgs e)
        {
            Choosenseat(A81);
            if (tempbookseat[80] == 0)
            {
                A81.BackColor = Color.Green;
                tempbookseat[80] = 1;

            }
            else
            {
                A81.BackColor = Color.Black;
                tempbookseat[80] = 0;
            }
        }

        protected void A82_Click(object sender, EventArgs e)
        {
            Choosenseat(A82);
            if (tempbookseat[81] == 0)
            {
                A82.BackColor = Color.Green;
                tempbookseat[81] = 1;

            }
            else
            {
                A82.BackColor = Color.Black;
                tempbookseat[81] = 0;
            }
        }

        protected void A83_Click(object sender, EventArgs e)
        {
            Choosenseat(A83);
            if (tempbookseat[82] == 0)
            {
                A83.BackColor = Color.Green;
                tempbookseat[82] = 1;

            }
            else
            {
                A83.BackColor = Color.Black;
                tempbookseat[82] = 0;
            }
        }

        protected void A84_Click(object sender, EventArgs e)
        {
            Choosenseat(A84);
            if (tempbookseat[83] == 0)
            {
                A84.BackColor = Color.Green;
                tempbookseat[83] = 1;

            }
            else
            {
                A84.BackColor = Color.Black;
                tempbookseat[83] = 0;
            }
        }

        protected void A55_Click(object sender, EventArgs e)
        {
            Choosenseat(A55);
            if (tempbookseat[54] == 0)
            {
                A55.BackColor = Color.Green;
                tempbookseat[54] = 1;

            }
            else
            {
                A55.BackColor = Color.Black;
                tempbookseat[54] = 0;
            }
        }

        protected void cartbtn_Click(object sender, EventArgs e)
        {
            string str = DateTime.Today.ToString();
            DateTime dt1 = Convert.ToDateTime(str);                       
                      

            String constring = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            SqlConnection sqlcon = new SqlConnection(constring);

            sqlcon.Open();
            SqlCommand com = new SqlCommand("addtocart", sqlcon);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@bookingid", Label5.Text.ToString());
            com.Parameters.AddWithValue("@uname", usertxt.Text.ToString());
            com.Parameters.AddWithValue("@perfname", Label6.Text.ToString());
            com.Parameters.AddWithValue("@seatno", TextBox3.Text.ToString());
            com.Parameters.AddWithValue("@totalseat", TextBox2.Text.ToString());
            com.Parameters.AddWithValue("@bdate", dt1);
            com.Parameters.AddWithValue("@price", TextBox4.Text);


            com.ExecuteNonQuery();
            sqlcon.Close();
            Label11.Text = "Data Has Been Saved in Database";
            Response.Redirect("AddtoCart.aspx");
        }

        

       

        protected void Button1_Click2(object sender, EventArgs e)
        {

            string[] str = TextBox3.Text.Split('A');
            int len = str.Length - 1;
            TextBox2.Text = len.ToString();
            

        }


        protected void BandA_Click(object sender, EventArgs e)
        {
        
        }

        protected void btnA_Click(object sender, EventArgs e)
        {
            TextBox4.Text = "30";
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
                string[] str = TextBox3.Text.Split('A');
                int len = str.Length - 1;
                TextBox2.Text = len.ToString();

            
        }
    }
}