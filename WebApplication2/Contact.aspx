<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
        
 <link href="Stylesheet.css" rel="stylesheet">
    

      <div class="jumbotron text-center">
  <h1>BOODHOO ONLINE STORE</h1> 
  <p></p> 
  <form class="form-inline">
    <div class="input-group">
      
    </div>
  </form>
</div>
    
    <h2>Contact Us</h2>


   <div>
       <div class="container">
           <div class="contact-parent">
               <div class="contact-child child1">
                   <p><i class ="fas fa-map-marker-alt"></i> <strong> Address </strong> <br/>
                       <span>605 Old Greytown Road, Raisethorpe <br/>
                        Pietermaritzburg 3201
                       </span>

                   </p>
                   <p> <i class="fas fa-phone-alt"></i> <strong> Let's Talk </strong> <br/>
                       <span>(+27)65 878 6339 </span>
                   </p>
                   <p> 
                       <i class="far fa-envelope"> </i><strong> General Support </strong> <br/>
                       <span>boodhoostore605@gmail.com</span>
                   </p>
                   </div>
               </div>
           </div>

   </div>
               <%--<div class="contact-child child2"> 
                   <div class="inside-contact">
                       <h2>Contact Us</h2>
                       <h3>
                           <asp:Label ID="Confirm" runat="server" Text=""></asp:Label>
                      </h3>
                       <p>Name *</p>
                       <asp:TextBox ID="txt_name" runat="server" Required ="required" Width="224px"></asp:TextBox>

                       <p>Email *</p>
                       <asp:TextBox ID="txt_email" runat="server" Required ="required" Width="220px"></asp:TextBox>

                       <p>Phone *</p>
                       <asp:TextBox ID="txt_phone" runat="server" Required ="required" Width="219px"></asp:TextBox>

                       <p>Subject *</p>
                       <asp:TextBox ID="txt_subject" runat="server" Required ="required" Width="217px"></asp:TextBox>

                       <p>Message *</p>
                       <asp:TextBox ID="txt_message" runat="server" Required ="required" TextMode ="MultiLine" Rows="4" Height="112px" Width="343px"></asp:TextBox>

                       <asp:Button ID="btn_send" runat="server" Text="SEND" Width="89px" OnClick="btn_send_Click" />
              
                   </div>
               </div>
               </div>
           </div>
       </div>--%>
    <footer class="container-fluid text-center">
  <p> <br><br>Designed By: Group777, LLC<br><br></p>
</footer>
</asp:Content>
