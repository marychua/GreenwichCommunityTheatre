using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace GreenwichCommunityTheatre
{
    public partial class Verification : System.Web.UI.Page
    {
        string connetionString = null;
        SqlConnection connection;
        SqlCommand command;
        string sql = null;        
        string x;
        string otp;
        string randomotp;

        protected void Page_Load(object sender, EventArgs e)
        {
                                
            otp = TextBox1.Text + TextBox5.Text + TextBox2.Text + TextBox4.Text + TextBox6.Text + TextBox7.Text;
            
            x = txtEmail.Text;
            //txtEmail.Text = "khavirna@gmail.com";
            Label5.Text = Session["username"].ToString();
            

            connetionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            sql = "Select * from User_tbl where (Uname='" + Label5.Text.ToString() + "')";
            connection = new SqlConnection(connetionString);
            connection.Open();
            command = new SqlCommand(sql, connection);
            SqlDataReader reader = command.ExecuteReader();
            reader.Read();
            txtEmail.Text = reader["Email"].ToString();            
            reader.Close();
            connection.Close();
        }




        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                Random rd = new Random();
                randomotp = (rd.Next(100000, 999999)).ToString();
                ViewState["msgotp"] = randomotp;
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("gct.noreply@gmail.com");
                mail.To.Add(x);
                mail.Subject = "Verification Code";
                mail.Body = "GCT-noreply: OTP :" + randomotp;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("gct.noreply@gmail.com", "gct000000");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                Label4.Text = "Mail is sent";
            }
            catch (Exception ex)
            {
                Label4.Text = ex.ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (otp == ViewState["msgotp"].ToString())
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                Label1.Text = "Wrong OTP";
            }
        }
    }
}