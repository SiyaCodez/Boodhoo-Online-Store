using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace WebApplication2
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        public Payment()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Proceedbtn_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "Select * from [AspCart] where Email=@email";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            InsertRowToOrder(ds.Tables[0]);
            DeleteFromCart();


            Label1.Visible = true;
            if (txtCard.Text == "" ||txtCardN.Text== ""|| txtCardNo.Text==""||txtExpirey.Text == "")
            {
                Label1.Text = "Please enter the required information";
            }
            else
            {
                txtCard.Text = "";
                txtCardN.Text = "";
                txtCardNo.Text = "";
                txtExpirey.Text = "";

                Response.AppendHeader("Refresh", "5;url=ShoppingCart.aspx");
                Label1.Text = "Your Order Has Been Placed!";

            }
        }
        private void DeleteFromCart()
        {
            con.Open();
            cmd.CommandText = "Delete from [AspCart] where Email=@email2";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@email2", Session["Email"].ToString());
            cmd.ExecuteNonQuery();
        }
        private void InsertRowToOrder (DataTable dataTable)
        {
            con.Close();
            con.Open();
            cmd.CommandText = "Insert into [AspOrder](ProductName, Email, Qty, ProductPrice, OrderDate) values (@Pname1,@email3,@qty,@pprice,@orderdate)";
            cmd.Connection = con;
            foreach(DataRow dr in dataTable.Rows)
            {
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Pname1", dr["ProductName"]);
                cmd.Parameters.AddWithValue("@email3", Session["Email"].ToString());
                cmd.Parameters.AddWithValue("@qty", dr["Qty"]);
                cmd.Parameters.AddWithValue("@pprice", dr["ProductPrice"]);
               // cmd.Parameters.AddWithValue("@Pid", dr["ProductID"]);
                cmd.Parameters.AddWithValue("@orderdate", DateTime.Now.ToString());
                cmd.ExecuteNonQuery();
            }
            con.Close();

        }
    }
}