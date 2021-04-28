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
using System.Configuration;
using Microsoft.Reporting.WebForms;



namespace GreenwichCommunityTheatre
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
           

        }
        

        protected void btnpanel1_Click(object sender, EventArgs e)
        {
            

        }

        protected void btnpanel2_Click(object sender, EventArgs e)
        {
            
        }

       
           

        //private Members GetData(string query)
        //{
        //    //string conString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        //    //SqlCommand cmd = new SqlCommand(query);
        //    //using (SqlConnection con = new SqlConnection(conString))
        //    //{
        //    //    using (SqlDataAdapter sda = new SqlDataAdapter())
        //    //    {
        //    //        cmd.Connection = con;

        //    //        sda.SelectCommand = cmd;
        //    //        using (Members dsCustomers = new Members())
        //    //        {
        //    //            sda.Fill(dsCustomers, "DataTable1");
        //    //            return dsCustomers;
        //    //        }
        //    //    }
        //    //}
        //}


    }
}