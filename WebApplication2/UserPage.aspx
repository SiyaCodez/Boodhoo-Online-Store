<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="WebApplication2.UserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron text-center">
        <h1>BOODHOO ONLINE STORE</h1>
        <p>Experience the best shopping with us here!</p>
        <form class="form-inline">
            <div class="input-group">
            </div>
        </form>
    </div>



     <br />
    <footer class ="container-fluid text-center jumbotron">
        <p>&copy; <%: DateTime.Now.Year %>- GROUP777 Limited. All Rights Reserved </p>
    </footer>

</asp:Content>
