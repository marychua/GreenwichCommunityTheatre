using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenwichCommunityTheatre
{
    public partial class PrintTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["BookingId"].ToString();

                //Label1.Text = "Felix";


        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}