<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebApplication2.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center">
  <h1>BOODHOO ONLINE STORE</h1> 
  <p></p> 
  <form class="form-inline">
    <div class="input-group">
      
    </div>
  </form>
</div>

     <div class="container-fluid">
          <div class="row">
      <h2>PAYMENT</h2>
         
              <div class="Row">
                <div class="col-sm-2">
                    <p>Card Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False" Font-Bold="True" Font-Italic="True"></asp:Label> 
                        
                    </p>
                </div>
                <div class="col-sm-8">
                    <div class ="form-group">

                     <div class ="form-group">
                        <label>Card Name:</label>
                        <asp:TextBox ID="txtCard" CssClass="form-control" runat="server" ValidationGroup="PV" Width="307px" ToolTip="Type of Bank">Capitec Bank</asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required!" ControlToValidate="txtCard" ForeColor="Red" ValidationGroup="PV"></asp:RequiredFieldValidator>
                    </div>

                        <div class ="form-group">
                        <label>Card Number:</label>
                        <asp:TextBox ID="txtCardNo" CssClass="form-control" runat="server" Width="308px">4000000000000</asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required!" ControlToValidate="txtCardNo" ForeColor="Red" ValidationGroup="PV"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Card Number Error" ForeColor="Red" ValidationExpression="^4[0-9]{12}(?:[0-9]{3})?$" ValidationGroup="PV" ControlToValidate="txtCardNo"></asp:RegularExpressionValidator>
                        </div>
                        <div class ="form-group">
                        <label>CVV:</label>
                        <asp:TextBox ID="txtCardN" CssClass="form-control" runat="server" Width="307px" ToolTip="3 digits">000</asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required!" ControlToValidate="txtCardNo" ForeColor="Red" ValidationGroup="PV"></asp:RequiredFieldValidator>
                            </div>

                        <div class ="form-group">
                        <label>Expiry Date:</label>
                        <asp:TextBox ID="txtExpirey" CssClass="form-control" runat="server" Width="309px">01/21</asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required!" ControlToValidate="txtExpirey" ForeColor="Red" ValidationGroup="PV"></asp:RequiredFieldValidator>
                        </div>
                        <div class ="form-group">
        <asp:Button ID="Completebtn" CssClass="btn btn-success btn-lg" runat="server" Text="Complete Order" OnClick="Proceedbtn_Click" Height="58px" />
                        
                    </div>
                        <div class ="container">
                        </div>
</div>
                    </div>
                  </div>     


     
    </div>
  </div>
</asp:Content>
