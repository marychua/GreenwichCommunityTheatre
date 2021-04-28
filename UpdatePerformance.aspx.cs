using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace GreenwichCommunityTheatre
{
    public partial class UpdatePerformance : System.Web.UI.Page
    {
        static string imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

       

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label11.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Beige;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label11.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label perfid = GridView1.Rows[e.RowIndex].FindControl("Label12") as Label;
            TextBox perfname = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox perfdate = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            TextBox perftime = GridView1.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
            //TextBox perfimage = GridView1.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            TextBox category = GridView1.Rows[e.RowIndex].FindControl("TextBox9") as TextBox;
            //TextBox description = GridView1.Rows[e.RowIndex].FindControl("TextBox10") as TextBox;
            TextBox description = GridView1.Rows[e.RowIndex].FindControl("TextBox10") as TextBox;
            //description.Text.Replace("'", "\"");
            FileUpload fu = GridView1.Rows[e.RowIndex].FindControl("FileUpload3") as FileUpload;
            int numIterations = 0;
            Random rand = new Random((int)DateTime.Now.Ticks);
            numIterations = rand.Next(1, 1000);
            fu.SaveAs(Server.MapPath("~/Images/") + numIterations + Path.GetFileName(fu.FileName));
            String link = "Images/" + numIterations + Path.GetFileName(fu.FileName);

            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            String updatedata = "Update Performance_tbl set PerfName='" + perfname.Text + "', PerfDate='" + perfdate.Text + "', PerfTime='" + perftime.Text + "', PerfImage='" + link + "', Category='" + category.Text + "', Description='" + description.Text.Replace("'", "''") + "' where PerfId='" + perfid.Text+"'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label11.Text = "Row Data Has Been Updated Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label perfid = GridView1.Rows[e.RowIndex].FindControl("Label10") as Label;
            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            String updatedata = "delete from Performance_tbl where PerfId=" + perfid.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label11.Text = "Row Data Has Been Deleted Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            TextBox perfid = GridView1.FooterRow.FindControl("TextBox11") as TextBox;
            TextBox perfname = GridView1.FooterRow.FindControl("TextBox12") as TextBox;
            TextBox perfdate = GridView1.FooterRow.FindControl("TextBox13") as TextBox;
            TextBox perftime = GridView1.FooterRow.FindControl("TextBox14") as TextBox;
            FileUpload fu = GridView1.FooterRow.FindControl("FileUpload2") as FileUpload;
            TextBox category = GridView1.FooterRow.FindControl("TextBox15") as TextBox;
            TextBox description = GridView1.FooterRow.FindControl("TextBox16") as TextBox;
            int numIterations = 0;
            Random rand = new Random((int)DateTime.Now.Ticks);
            numIterations = rand.Next(1, 1000);
            fu.SaveAs(Server.MapPath("~/Images/") + numIterations + Path.GetFileName(fu.FileName));
            String link = "Images/" + numIterations + Path.GetFileName(fu.FileName);
            String query = "insert into Performance_tbl(PerfId,PerfName,PerfDate,PerfTime,Category,Description,PerfImage) values(" + perfid.Text + ",'" + perfname.Text + "','" + perfdate.Text + "','" + perftime.Text + "','" + category.Text + "','" + description.Text + "','" + link + "')";
           
            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label11.Text = "New Row Inserted Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

      

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    GridView1.DataSource = SqlDataSource1;
        //    GridView1.DataBind();
        //}
    }
       
}