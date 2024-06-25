using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;
using WebApplication2.Models;
using Microsoft.AspNet.Identity;


namespace WebApplication2.Private
{
    public partial class Private2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String currentUserId = User.Identity.GetUserId();
            ApplicationDbContext db = new ApplicationDbContext();
            ApplicationUser currentUser = db.Users.Find(currentUserId);
            Label2.Text = currentUser.CFirstname + "\t" + currentUser.CLastName;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ImageFilePath = string.Empty;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/Image/" + FileUpload1.FileName));
                ImageFilePath = "!/Image/" + FileUpload1.FileName;
            }

            SqlConnection Con = new SqlConnection();
            Con.ConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            Con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Con;
            cmd.CommandText = "Insert into [AspProduct](ProductName,ProductDescription,ProductPrice,ProductImage) values (@PName,@PDesc,@Pprice,@PImage)";
            cmd.Connection = Con;
            
            cmd.Parameters.AddWithValue("@PName", ProductName.Text);
            cmd.Parameters.AddWithValue("@PDesc", ProductDescription.Text);
            cmd.Parameters.AddWithValue("@Pprice", ProductPrice.Text);
            cmd.Parameters.AddWithValue("@PImage",ImageFilePath);
            int result = cmd.ExecuteNonQuery();

            if (result > 0)
            {
                Label1.Text = "Saved Record Successfully";
            }
        }

        //    if (!IsPostBack)
        //    {

        //    }
        //    else
        //    {
        //        Response.Redirect("Login.aspx");
        //    }
        //}



        //protected void btnAdd_Click(object sender, EventArgs e)
        //{
        //    if (IsFormValidate())
        //    {
        //        FileUpload1.SaveAs(Server.MapPath("~/Image/") + FileUpload1.FileName);
        //        //FileUpload2.SaveAs(Server.MapPath("~/Image/") + FileUpload2.FileName);
        //        //FileUpload3.SaveAs(Server.MapPath("~/Image/") + FileUpload2.FileName);
        //        SqlConnection Con = new SqlConnection(@"Data Source=143.128.146.30\ist3;Initial Catalog=group17;Persist Security Info=True;User ID=group17;Password=nuzz3e");
        //        SqlCommand cmd = new SqlCommand("INSERT INTO AdminAddPro(Name,Detail,Price,Image,Qnt,EntryDate) Values(@NAME,@DETAIL,@PRICE,@IMG,@qnt,getdate())", Con);
        //        if(Con.State == ConnectionState.Closed)
        //        {
        //            Con.Open();
        //        }

        //        cmd.Parameters.AddWithValue("@NAME", txtProductName.Text);
        //        cmd.Parameters.AddWithValue("@DETAIL",txtDesc.Text);
        //        cmd.Parameters.AddWithValue("@PRICE",Convert.ToDouble(txtP.Text));
        //        cmd.Parameters.AddWithValue("@IMG",FileUpload1.FileName);
        //        cmd.Parameters.AddWithValue("@qnt",Convert.ToInt32(txtQty.Text));
        //       // cmd.Parameters.AddWithValue("@Img1",FileUpload2.FileName);
        //       // cmd.Parameters.AddWithValue("@Img2",FileUpload3.FileName);
        //        cmd.ExecuteNonQuery();
        //        Con.Close();
        //        Response.Write("<script>alert('Product Added Successfully'); </script>");


        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Validation Error'); </script>");
        //    }
        //}

        //private bool IsFormValidate()
        //{
        //    if (txtProductName.Text == string.Empty)
        //    {
        //        Response.Write("<script>alert('Item name is Required'); </script>");
        //        txtProductName.Text = string.Empty;
        //        txtProductName.Focus();
        //        return false;
        //    }
        //    if (txtDesc.Text==string.Empty)
        //    {
        //        Response.Write("<script>alert('Description is Required'); </script>");
        //        txtDesc.Text = string.Empty;
        //        txtDesc.Focus();
        //        return false;
        //    }
        //    if (txtP.Text==string.Empty)
        //    {
        //        Response.Write("<script>alert('Price is Required'); </script>");
        //        txtP.Text = string.Empty;
        //        txtP.Focus();
        //        return false;
        //    }
        //    if (txtQty.Text== string.Empty)
        //    {
        //        Response.Write("<script>alert('Item name is Required'); </script>");
        //        txtQty.Text = string.Empty;
        //        txtQty.Focus();
        //        return false;
        //    }
        //    return true;
        //}

    }
}