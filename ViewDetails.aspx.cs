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
    public partial class ViewDetails : System.Web.UI.Page
    {
        
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

            //if (Session["username"] == null)
            //{
            //    Response.Redirect("Default.aspx");
            //}
            //else
            //{
            //    usertxt.Text =  Session["username"].ToString();

            //}

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            //if (e.CommandName == "booknow")
            //{
            //    Session["Value"] = e.CommandArgument;
            //    //Response.Redirect("BookSeat.aspx?Name=" + e.CommandArgument.ToString());
            //    Response.Redirect("SelectSeat.aspx?Name=" + e.CommandArgument.ToString());
            //}

            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                if (e.CommandName == "booknow")
                {
                    Session["Value"] = e.CommandArgument;
                    Response.Redirect("SelectSeat.aspx?Name=" + e.CommandArgument.ToString());

                }
            }

        }

        protected void bookbtn_Click(object sender, EventArgs e)
        {
         
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

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