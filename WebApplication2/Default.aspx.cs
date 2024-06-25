using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Validate();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Unnamed1_MenuItemClick(object sender, MenuEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShoppingCart");
        }

        protected void btnRedirect0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShoppingCart");
        }

        protected void btnRedirect1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShoppingCart");
        }
    }
}