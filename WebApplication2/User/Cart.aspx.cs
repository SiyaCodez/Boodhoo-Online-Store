using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Cart : System.Web.UI.Page
    {
        decimal price = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
             foreach(GridViewRow item in GridView1.Rows)
            {
                price = price + Convert.ToDecimal(item.Cells[3].Text);
            }
            ResultLbl.Text = "Total Amount: " + price.ToString("C2");
        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Payment.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int index = Convert.ToInt32(e.RowIndex);
            //GridView1.DeleteRow(index);
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[1].Text;
                foreach (Button button in e.Row.Cells[2].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }
        }

        protected void Proceedbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/Payment");
        }
    }
}