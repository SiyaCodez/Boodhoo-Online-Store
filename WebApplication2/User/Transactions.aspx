<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="WebApplication2.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron text-center">
  <h1>BOODHOO ONLINE STORE</h1> 
  <p></p> 
  <form class="form-inline">
    <div class="input-group">
      
    </div>
  </form>
</div>
 
   <div class="container">
       <h2>Previous Transactions</h2>
       <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="Black" BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="5px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="White" GridLines="Horizontal" Height="473px" Width="1033px">
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
               <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
               <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
               <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
               <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
               <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
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
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [AspOrder] WHERE [ID] = @original_ID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL))" InsertCommand="INSERT INTO [AspOrder] ([ProductName], [Email], [Qty], [ProductPrice], [OrderDate]) VALUES (@ProductName, @Email, @Qty, @ProductPrice, @OrderDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [ProductName], [Email], [Qty], [ProductPrice], [OrderDate] FROM [AspOrder]" UpdateCommand="UPDATE [AspOrder] SET [ProductName] = @ProductName, [Email] = @Email, [Qty] = @Qty, [ProductPrice] = @ProductPrice, [OrderDate] = @OrderDate WHERE [ID] = @original_ID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Qty] = @original_Qty) OR ([Qty] IS NULL AND @original_Qty IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL))">
           <DeleteParameters>
               <asp:Parameter Name="original_ID" Type="Int32" />
               <asp:Parameter Name="original_ProductName" Type="String" />
               <asp:Parameter Name="original_Email" Type="String" />
               <asp:Parameter Name="original_Qty" Type="Int32" />
               <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
               <asp:Parameter Name="original_OrderDate" Type="DateTime" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="ProductName" Type="String" />
               <asp:Parameter Name="Email" Type="String" />
               <asp:Parameter Name="Qty" Type="Int32" />
               <asp:Parameter Name="ProductPrice" Type="Decimal" />
               <asp:Parameter Name="OrderDate" Type="DateTime" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="ProductName" Type="String" />
               <asp:Parameter Name="Email" Type="String" />
               <asp:Parameter Name="Qty" Type="Int32" />
               <asp:Parameter Name="ProductPrice" Type="Decimal" />
               <asp:Parameter Name="OrderDate" Type="DateTime" />
               <asp:Parameter Name="original_ID" Type="Int32" />
               <asp:Parameter Name="original_ProductName" Type="String" />
               <asp:Parameter Name="original_Email" Type="String" />
               <asp:Parameter Name="original_Qty" Type="Int32" />
               <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
               <asp:Parameter Name="original_OrderDate" Type="DateTime" />
           </UpdateParameters>
       </asp:SqlDataSource>
   </div>
       <div class ="container">
        <h2>Customers</h2>
    <asp:GridView ID="GridView1" runat="server" Height="349px" Width="1016px" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="Black" BorderColor="#CCCCCC" BorderStyle="Ridge" BorderWidth="5px" CellPadding="4" ForeColor="White" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="CFirstName" HeaderText="CFirstName" SortExpression="CFirstName" />
            <asp:BoundField DataField="CLastName" HeaderText="CLastName" SortExpression="CLastName" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserName], [CFirstName], [CLastName], [PhoneNumber] FROM [AspNetUsers]"></asp:SqlDataSource>
        </div>

     <br/>
    <br />
</asp:Content>
