using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication2
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        List<CartItem> cartList = new List<CartItem>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session ["Email"]= User.Identity.Name.ToString();
            //lblDate.Text = DateTime.Now.ToShortDateString();
            //SqlDSCustomer.SelectParameters["email"].DefaultValue = User.Identity.Name.ToString();
            //DetailsViewCustomer.DataBind();
            //Session["CustID"] = DetailsViewCustomer.Rows[0].Cells[1].Text;
            //Session["CustName"] = DetailsViewCustomer.Rows[1].Cells[1].Text + " " + DetailsViewCustomer.Rows[2].Cells[1].Text;
            if (!Page.IsPostBack)
                Session["Cart"] = cartList;
            else
               cartList = (List<CartItem>)Session["Cart"];
           
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_(object sender, GridViewCommandEventArgs e)
        {

        }
        protected void gridShopCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //cartList.RemoveAt(e.RowIndex);
            //UpdateCart();
            //Label1.Text = string.Format("{0:C2}", GetCartTotal());
        }


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "SaleDetails")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;
            }
            string Name = string.Empty;
            decimal priceLbl = 0;
            DataListItem it = DataList1.SelectedItem;
            TextBox Qty = (TextBox)it.FindControl("TextBox1") as TextBox;
            int Q = Convert.ToInt16(Qty.Text);
            Label NameLbl = (Label)it.FindControl("ProductNameLabel") as Label;
            Name = NameLbl.Text;
            Label price = (Label)it.FindControl("ProductPriceLabel") as Label;
            priceLbl = (Q * Convert.ToDecimal(price.Text));
            SqlConnection Con = new SqlConnection();
            Con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            Con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "INSERT INTO [AspCart] (ProductName, Email,Qty,ProductPrice) values (@Pname,@email,@qty,@Pprice)";
            cmd.Connection = Con;
           // cmd.Parameters.AddWithValue("@PID", Request.QueryString["ProductID"]);
            cmd.Parameters.AddWithValue("@Pname", Name);
            cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
            cmd.Parameters.AddWithValue("@Qty", Q);
            cmd.Parameters.AddWithValue("@Pprice", priceLbl);
            int Result = cmd.ExecuteNonQuery();
            if (Result > 0)
            {
                Response.Redirect("~/User/Cart.aspx");
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // string Name = string.Empty;
           // decimal priceLbl = 0;
           // decimal Qty = 0;
           // foreach (DataListItem item in DataList1.Items)
           // {
           //     TextBox Quantity = item.FindControl("TextBox1") as TextBox;
           //     Qty = Convert.ToDecimal(Quantity.Text);
           //     Label NameLbl = item.FindControl("ProductPriceLabel") as Label;
           //     Name = NameLbl.Text;
           //     Label price = item.FindControl("ProductPriceLabel") as Label;
           //     priceLbl = (Qty * Convert.ToDecimal(price.Text));

           // }

           // SqlConnection Con = new SqlConnection();
           // Con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
           // Con.Open();
           // SqlCommand cmd = new SqlCommand();
           // cmd.CommandText = "INSERT INTO [AspCart] (ProductID, ProductName, Email,Qty,ProductPrice) values (@PID,@Pname,@email,@qty,@Pprice)";
           // cmd.Connection = Con;
           // cmd.Parameters.AddWithValue("@PID", Request.QueryString["ID"]);
           // cmd.Parameters.AddWithValue("@Pname", Name);
           //cmd.Parameters.AddWithValue("@email", Session["Email"].ToString());
           //  cmd.Parameters.AddWithValue("@Qty",Qty );
           // cmd.Parameters.AddWithValue("@Pprice", priceLbl);
           // int Result = cmd.ExecuteNonQuery();
           // if (Result > 0)
           // {
           //     Response.Redirect("~/User/Cart.aspx");
           // }

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from AspProduct where (ProductName like '%"+TextBox2.Text+"%')", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }


        // protected decimal GetCartTotal()
        //{
        //    Decimal total = 0;
        //    for (int i = 0; i < cartList.Count; i++)
        //    {
        //        total += cartList[i].SubTotal;
        //    }
        //    return total;
        // }
        // protected void UpdateCart()
        // {
        //    gridShopCart.DataSource = cartList;
        //    gridShopCart.DataBind();
        //    for (int i = 0; i < gridShopCart.Rows.Count; i++) //for the currency symbol
        //    {
        //        gridShopCart.Rows[i].Cells[3].Text = String.Format("{0:C2}", Convert.ToDecimal(gridShopCart.Rows[i].Cells[3].Text));
        //        gridShopCart.Rows[i].Cells[5].Text = String.Format("{0:C2}", Convert.ToDecimal(gridShopCart.Rows[i].Cells[5].Text));
        //    }
        //
        // }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int rowindex = 0;
        //    if (e.CommandName == "btnClick")
        //    {
        //        rowindex = Convert.ToInt32(e.CommandArgument);
        //        CartItem ci = new CartItem();
        //        ci.ID = Convert.ToInt16(GridView1.Rows[rowindex].Cells[0].Text);
        //        ci.Price = Decimal.Parse(GridView1.Rows[rowindex].Cells[3].Text, NumberStyles.Currency);
        //        DropDownList ddlQty = (DropDownList)GridView1.Rows[rowindex].FindControl("ddlQuantity");
        //        ci.Quantity = Convert.ToInt16(ddlQty.SelectedValue);
        //        ci.SubTotal = ci.GetSubTotal();
        //        cartList.Add(ci);
        //        Session["Cart"] = cartList;
        //        Label1.Text = String.Format("{0:C2}", GetCartTotal());
        //        UpdateCart();

        //    }

        //    }
        //    protected void btnConfirmSale_Click(object sender, EventArgs e)
        //    {
        //        //SqlDSRecordSale.InsertParameters["CustID"].DefaultValue = DetailsViewCustomer.Rows[0].Cells[1].Text;
        //        //SqlDSRecordSale.InsertParameters["Amount"].DefaultValue = Decimal.Parse(Label1.Text, NumberStyles.Currency).ToString(); //because of the Currency symbol
        //        //SqlDSRecordSale.Insert();
        //        //Session["Total"] = Label1.Text;
        //        //Response.Redirect("~/User/Receipt.aspx");
        //    }

        //    protected void SqlDSRecordSale_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        //    {
        //        //string OrderNum = e.Command.Parameters["@OrderID"].Value.ToString();
        //        //for (int i = 0; i < gridShopCart.Rows.Count; i++)
        //        //{
        //        //    SqlDSOrderDetail.InsertParameters["OrderID"].DefaultValue = OrderNum;
        //        //    SqlDSOrderDetail.InsertParameters["ProdID"].DefaultValue = gridShopCart.Rows[i].Cells[1].Text;
        //        //    SqlDSOrderDetail.InsertParameters["Description"].DefaultValue = gridShopCart.Rows[i].Cells[2].Text;
        //        //    SqlDSOrderDetail.InsertParameters["UnitPrice"].DefaultValue = Decimal.Parse(gridShopCart.Rows[i].Cells[3].Text, NumberStyles.Currency).ToString();
        //        //    SqlDSOrderDetail.InsertParameters["Qty"].DefaultValue = gridShopCart.Rows[i].Cells[4].Text;
        //        //    SqlDSOrderDetail.InsertParameters["Sub"].DefaultValue = (Decimal.Parse(gridShopCart.Rows[i].Cells[5].Text, NumberStyles.Currency)).ToString();
        //        //    SqlDSOrderDetail.Insert();
        //        //    //lblDate.Text = Decimal.Parse(gridShopCart.Rows[i].Cells[3].Text,NumberStyles.Currency).ToString();
        //        //}
        //    }

        //    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        //    {

        //    }


        //}
    }
    }
