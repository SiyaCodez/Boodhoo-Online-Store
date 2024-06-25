<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  EnableEventValidation="false" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
  <h1>BOODHOO ONLINE STORE</h1> 
  <p></p> 
  <form class="form-inline">
    <div class="input-group">
      
    </div>
  </form>
</div>

    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="Black" BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="10px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="White" GridLines="Horizontal" Height="340px" Width="1170px" OnRowDeleting="GridView1_RowDeleting">
          
             <Columns>
                  <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" Visible="True" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [AspCart] WHERE ([Email] = @Email)" DeleteCommand="DELETE FROM [AspCart] WHERE [ID] = @ID" InsertCommand="INSERT INTO [AspCart] ([ProductName], [Email], [Qty], [ProductPrice]) VALUES (@ProductName, @Email, @Qty, @ProductPrice)" UpdateCommand="UPDATE [AspCart] SET [ProductName] = @ProductName, [Email] = @Email, [Qty] = @Qty, [ProductPrice] = @ProductPrice WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Qty" Type="Int32" />
                <asp:Parameter Name="ProductPrice" Type="Decimal" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="ResultLbl" runat="server" Text="Label" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
        <br />
        <asp:Button ID="Proceedbtn" CssClass="btn btn-success btn-lg" runat="server" Text="Proceed to Payment" OnClick="Proceedbtn_Click" Height="58px" />
        <br />
    </div>
</asp:Content>
