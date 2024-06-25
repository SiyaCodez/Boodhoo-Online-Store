<%@ Page Title="ProductGallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductGallery.aspx.cs" Inherits="WebApplication2.Private.Private2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron text-center">
  <h1>BOODHOO ONLINE STORE</h1> 
  <p></p> 
  <form class="form-inline">
    <div class="input-group">
      
                <asp:Label ID="Label2" runat="server"></asp:Label>
      
    </div>
  </form>
</div>
    <table style="width:100%;">
        <tr>
            <td class ="modal-sm" style="width: 298px">Product Name </td>
            <td style="width: 323px"><asp:TextBox ID="ProductName" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td class ="modal-sm" style="width: 298px">Product Description</td>
            <td style="width: 323px"><asp:TextBox ID="ProductDescription" runat="server" TextMode="MultiLine" Width="120px"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class ="modal-sm" style="width: 298px">Product Price</td>
            <td style="width: 323px"><asp:TextBox ID="ProductPrice" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class ="modal-sm" style="width: 298px">Product Image</td>
            <td style="width: 323px"> <asp:FileUpload ID="FileUpload1" runat="server" /> </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class ="modal-sm" style="width: 298px">Add Product</td>
            <td style="width: 323px">
                <asp:Button ID="Button1" runat="server" Text="Button" Width="102px" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>

    </table>
    <br/>


























           <%-- <div class="Row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class ="form-group">

                     <div class ="form-group">
                        <label>Product Name</label>
                        <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                     <div class ="form-group">
                        <label>Description</label>
                        <asp:TextBox ID="txtDesc" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                     <div class ="form-group">
                        <label>Price</label>
                        <asp:TextBox ID="txtP" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    
                     <div class ="form-group">
                        <label>Quantity</label>
                        <asp:TextBox ID="txtQty" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class ="form-group">
                        <label>Image</label>
                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                    </div>

                   

            
                    
                    <div class ="form-group">
                        <asp:Button ID="btnAdd" CssClass="btn btn-success btn-lg" runat="server" Text="ADD PRODUCT" OnClick="btnAdd_Click" />
                        
                    </div>
                   
                </div>
                <div class="col-sm-4"></div>


</div>

<div class="Row">
    <div class="col-sm-12">
        <div class="table"> 
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

            <br />
            <br />

        </div>
        </div>--%>
           
    
    
    
    
    
    
</asp:Content>

    