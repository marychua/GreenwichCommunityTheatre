  using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace GreenwichCommunityTheatre
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["username"].ToString(); 
            findaddress(Label1.Text);
            //String emailadd1 = Label9.Text;
            //Label13.Text = "khavirna@gmail.com";
            Label14.Text = DateTime.UtcNow.ToString();
            Label15.Text = Session["DeliveryDate"].ToString();
            Label10.Text = Session["Total"].ToString();
            Label16.Text= Session["ConfId"].ToString();
            sendcustomermail(Label9.Text);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        private void findaddress(String user)
        {
            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true"; 
            String myquery = "Select * from User_tbl where Uname='" + user + "'";
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

                Label8.Text = ds.Tables[0].Rows[0]["Address"].ToString();
                Label9.Text = ds.Tables[0].Rows[0]["Email"].ToString();

            }

            con.Close();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
        private void sendcustomermail(String emailadd1)
        {
            StringBuilder sb = new StringBuilder();

            StringWriter sw = new StringWriter(sb);            
            HtmlTextWriter htmlTW = new HtmlTextWriter(sw);
            Panel1.RenderControl(htmlTW);



                    StringReader sr = new StringReader(sb.ToString());
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
                    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    using (MemoryStream memoryStream = new MemoryStream())
                    {
                        PdfWriter writer = PdfWriter.GetInstance(pdfDoc, memoryStream);
                        pdfDoc.Open();
                        htmlparser.Parse(sr);
                        pdfDoc.Close();
                        byte[] bytes = memoryStream.ToArray();
                        memoryStream.Close();




                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.Port = 587;
                        smtp.UseDefaultCredentials = false;
                        smtp.Credentials = new System.Net.NetworkCredential("allabouttoys.ltd@gmail.com", "allabouttoys000000");
                        smtp.EnableSsl = true;
                        MailMessage msg = new MailMessage();
                        msg.Subject = "Invoice Receipt";
                        msg.Body = "Hey "+ Label1.Text +"\nYour order has been confirmed!"+"\n Attached is the Receipt"+"\n\nYour confirmation ID is "+ Session["ConfId"].ToString() +"\n*For those who choose to collect ticket- Use the following ID to collect Ticket at GC Theatre Collection Booth."+ "\n\n\nThanks & Regards.\nGreenwich Community Theatre Team";
                        msg.Attachments.Add(new Attachment(new MemoryStream(bytes), "booking details.pdf"));
                        string toaddress = emailadd1;
                        msg.To.Add(toaddress);
                        string fromaddress = "GCT-noreply <allabouttoys.ltd@gmail.com>";
                        msg.From = new MailAddress(fromaddress);
                        try
                        {
                            smtp.Send(msg);


                        }
                        catch
                        {
                            throw;
                        }
                        //Response.Write("email sent to " + emailadd1);
                    }
                }
          
        protected void Button2_Click(object sender, EventArgs e)
        {
            sendcustomermail(Label13.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrintTicket.aspx");
        }

       
    }
}