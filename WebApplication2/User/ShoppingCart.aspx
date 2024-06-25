<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication2.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
  <h1>BOODHOO ONLINE STORE</h1> 
  <p>&nbsp;</p> 
 <form class="example" action="action_page.php">
     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" BackColor="#333333" ForeColor="White" Height="27px" Width="89px" />
</form>
</div>

    <div class="col-sm-8">
       <div class ="form-group">
           &nbsp;</div>
        </div>
    
     <div class ="container">
         <asp:DataList ID="DataList1" runat="server" BackColor="Black" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="White" GridLines="Horizontal" RepeatColumns="6" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <ItemTemplate>
                 <asp:Image ID="Image1" runat="server" Height="188px" ImageUrl='<%# Eval("ProductName", "~/Image/{0}.jpg") %>' Width="191px"  />
                 <br />
                 Name: 
                 <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                 <br />
                 Price: R
                 <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Eval("ProductPrice") %>' />
                 <br />
                 Qty: 
                 <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="127px" ForeColor="Black"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" BackColor="Red" CommandName="SaleDetails" ForeColor="White" Text="Add to Cart" Width="195px" OnClick="Button1_Click" />
             </ItemTemplate>
             <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
         </asp:DataList>




         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [AspProduct]"></asp:SqlDataSource>




         </div>
    
         
     
   
       <%-- <div style="position: fixed; right: 55px; top: 69%; height: 182px; width: 357px;">
        <h4 style="font-family: Arial; font-size: medium; color: #008080; font-weight: bold;">My Shopping Cart&nbsp; Amount Due:&nbsp<asp:Label ID="Label1" runat="server" Text="R0"></asp:Label>
            </h4>--%>
      
        
   <%-- <script>
        function ConfirmMessage() {
            if (confirm("Confirm the Sale") == true)
                return true;
            else
                return false;
        }
        
    </script>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Flower]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSRecordSale" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' DeleteCommand="DELETE FROM [Order] WHERE [OrderID] = @original_OrderID AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([CustID] = @original_CustID) OR ([CustID] IS NULL AND @original_CustID IS NULL))" InsertCommand="INSERT INTO [Order] ([Date], [Amount], [CustID]) VALUES (@Date, @Amount, @CustID); Select @OrderID=Scope_Identity()" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [Date] = @Date, [Amount] = @Amount, [CustID] = @CustID WHERE [OrderID] = @original_OrderID AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Amount] = @original_Amount) OR ([Amount] IS NULL AND @original_Amount IS NULL)) AND (([CustID] = @original_CustID) OR ([CustID] IS NULL AND @original_CustID IS NULL))" OnInserted="SqlDSRecordSale_Inserted">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_Amount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_CustID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="lblDate" Name="Date" PropertyName="Text" Type="DateTime" />
            <asp:Parameter Name="CustID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Amount" />
            <asp:Parameter Direction="Output" Name="OrderID" Type="Int16" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Amount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="CustID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Date" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="original_Amount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_CustID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDSOrderDetail" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' DeleteCommand="DELETE FROM [OrderDetail] WHERE [OrderID] = @original_OrderID AND [Prod ID] = @original_ProdID AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([Sub] = @original_Sub) OR ([Sub] IS NULL AND @original_Sub IS NULL))" InsertCommand="INSERT INTO [OrderDetail] ([OrderID], [ProdID], [Description], [Qty], [UnitPrice], [Sub]) VALUES (@OrderID, @ProdID, @Description, @Qty, @UnitPrice, @Sub)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OrderDetail]" UpdateCommand="UPDATE [OrderDetail] SET [Description] = @Description, [Qty] = @Qty, [UnitPrice] = @UnitPrice, [Sub] = @Sub WHERE [OrderID] = @original_OrderID AND [ProdID] = @original_ProdID AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL)) AND (([Sub] = @original_Sub) OR ([Sub] IS NULL AND @original_Sub IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ProdID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Qty" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_Sub" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ProdID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="Qty" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Sub" Type="Decimal"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="Qty" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Sub" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_OrderID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ProdID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Qty" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_UnitPrice" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_Sub" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>--%>
   












      <br />
    <footer class ="container-fluid text-center jumbotron">
        <p>&copy; <%: DateTime.Now.Year %>- GROUP777 Limited. All Rights Reserved </p>
    </footer>


  
</asp:Content>
