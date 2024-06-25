<%@ Page Title="BOODHOO ONLINE STORE" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center">
        <h1>BOODHOO ONLINE STORE</h1>
        <p class ="lead">Experience the best shopping with us here!</p>
    </div>

   <div class="container">
        <div class="Row">
            <div class="col-sm-8">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class=" item active">
                            <img src="Image/grocery-store.jpg" alt="Image" style="width: 100%;" />
                            <div class="carousel-caption">
                                <h3>Offer</h3>
                                <p>Get 50% off your first order</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="Image/Bakery.jpg" alt="Image" style="width: 100%;"/>
                            <div class="carousel-caption">
                                <h3>Fresh Baked Cakes</h3>
                                <p>Buy 2 Cossaints and get 2 more!</p>
                            </div>
                        </div>

                        <div class=" item">
                            <img src="Image/FruitSalad.jpg" alt="Image" style="width: 100%;" />
                            <div class="carousel-caption">
                                <h3>Vegetables</h3>
                                <p>Buy Fruit Salad to Stand a Chance to Win R50 Airtime</p>
                            </div>
                        </div>


                    </div>

                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>


                </div>
            </div>

            <div class="col-sm-4">
                <div class ="well">
                     <p > <strong>Register For Vaccine!</strong> <br/>
            The government has announced that ages from 12 years to older are allowed to vaccine at no cost.</p>
        <p><a href="https://vaccine.enroll.health.gov.za/#/" class="btn btn-primary btn-lg">Find Out More &raquo;</a></p>
                 
                       </div>
                <%--<div class="well">
                    <p>Visit Our Social Media Platforms</p>
                </div>--%>
                <div class="well">
                    <p><strong>LOCATE US HERE!</strong></p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3470.431252145388!2d30.40524121483913!3d-29.562053182060467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1ef6bb91f6afff6f%3A0x816f6de88b01956!2sShell!5e0!3m2!1sen!2sza!4v1633290943724!5m2!1sen!2sza" <%--height: 100px--%>; width: 202px;"></iframe>
                </div>

                </div>
            </div>
        </div>
 
    <div class ="container text-center">
        <h3>PRODUCTS</h3>
       <br />
       
        
       <div class="container">
           <div class ="Row">
            <div class="col-lg-4">
                <img class="img-circle" src="Image/bakeryy.jpg"  alt="thumb" width="140" height="140"/>
                <h4>Bakery</h4>
                <p>Our bakery, which produces delicious goodies: fresh rolls, pies, pastries, muffins, croissants, cakes, etc.</p>
                 <p> <a class="btn btn-default " href="/User/ShoppingCart.aspx" onclick="btnRedirect_Click" role="button">View More &raquo;</a></p> 
            </div>
                 </div>
            <div class="col-lg-4">
                <img class="img-circle" src="Image/Ready-meals-ruled-by-sensory-indulgence-trend.jpg"  alt="thumb" width="140" height="140" />
               <h4>Quick Snack & Ready Meals</h4>
                 <p>Quick Snack, includes Nik Naks, Lays, etc as well as sweets, cold drinks, etc.
                    Ready Beef stews & curries, rice dishes, lasagne & pasta meals.
                 </p>
              <p> <a class="btn btn-default " href="~/User/ShoppingCart.aspx" onclick="btnRedirect_Click" role="button">View More &raquo;</a> </p>
                 </div>
           <div class="col-lg-4">
                <img class="img-circle" src="Image/fruits-and-vegetables-thumb.jpg" alt="thumb" width="140" height="140"/>
               <h4>Fruit & Vegetables</h4>
                 <p>Fruit: selected range of seasonal fruit punnets, mixed fruit, fruit salads and cups
                     Vegetables: selected range of seasonal pre-cut vegetables, whole veg, herbs and salads
                 </p>
               <p>
                    <a class="btn btn-default " href="~/User/ShoppingCart.aspx" onclick="btnRedirect_Click" role="button">View More &raquo;</a></p>
               <%-- <p> <asp:Button ID="BtnRedirect1" runat="server" OnClick="btnRedirect1_Click" Text="View More>>" BackColor="#333333" BorderStyle="Ridge" Height="35px" Width="119px" />  
                 </p>--%>
            
                 </div>
            </div>
        <hr />
   </div>
      
    <div class="container text-center">
        <h3>The Store is A Division of Shell VIP Service Center</h3>
       <div class="Col-sm-2">
           <%--<img src="Image/download.png" class="img-response" style="width:10%" alt="Image" />--%>
           <%--<p> <a href="https://www.fueldirectory.co.za/listing.php?listings_id=6408"a> </a></p>   --%>
           </div>
        </div>
    
    <br />
    <footer class ="container-fluid text-center jumbotron">
        <p>&copy; <%: DateTime.Now.Year %>- GROUP777 Limited. All Rights Reserved </p>
    </footer>






</asp:Content>
