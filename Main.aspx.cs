using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GreenwichCommunityTheatre
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //if (Session["username"] == null)
            //{
            //    Response.Redirect("Default.aspx");
            //}
            //else
            //{
            //    usertxt.Text = "Hello " + Session["username"].ToString();
            //}
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
            
            if(Request.QueryString["cat"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource3;
                DataList1.DataBind();
            }
          
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("ViewDetails.aspx?Name=" + e.CommandArgument.ToString());

            }
            //if (Session["username"] == null)
            //{
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{

            //    if (e.CommandName == "viewdetails")
            //    {
            //        Response.Redirect("ViewDetails.aspx?Name=" + e.CommandArgument.ToString());

            //    }
            //}





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

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
            else
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();
            }
        }

        

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
            else
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Review.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            DataList1.DataSourceID = null;
            DataList1.DataSource = SqlDataSource1;
            DataList1.DataBind();
            Response.Redirect("Main.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx?cat=comedy");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx?cat=musical");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx?cat=tragedy");
        }
    }
}