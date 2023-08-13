<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SE256_Brown_Masterbackend._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content/HomePage.css" rel="stylesheet" />
    

    <!--cc
    <div>
        <h1>Home Page</h1>

    </div>

    <div>
        <p>Our company name is Office Lovers</p>

    </div>

    <div>

        <p>We sell all kinds of products here. Mostly office supplies and some other things.</p>

    </div>-->

    <!--codsmment-->

    <!--first we need a header-->

    <!--text: business logo, shop, deals, services, search field (text box maybe) with magnifiying glass-->

    <!--also in header: three dots/lines for navigation, question mark for help, sign in (to login or create an account)-->

    <!--also in header: shopping cart-->



    <header class="headRed"><!--beginning of header; give it a class of headRed  &nbsp;-->
        
        <!--logo--> 
        <asp:Button ID="logoButton" runat="server" Text="logo" OnClick="logoButton_Click" CssClass="logoImage"/>

        <!--<asp:Image ID="Image1" runat="server" ImageUrl="~/Imgs/logotry1.png" Height="200px" Width="200px" />-->

        &nbsp;

        <!--shop dropdown -->
        <asp:DropDownList ID="shopdrop" runat="server" >
            <asp:ListItem Text="Shop"></asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>
        </asp:DropDownList>

        

        

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--deals dropdown-->
        <asp:DropDownList ID="DropDownList6" runat="server">
            <asp:ListItem>Deals</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>
        </asp:DropDownList> 

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--services dropdown-->
        <asp:DropDownList ID="DropDownList7" runat="server" >
            <asp:ListItem>Services</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>
        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;


        <asp:TextBox ID="textSearch" runat="server" MaxLength="50" Text="Search" />
        <!--search textbox?--> 

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--navigation part it will be a drop down list-->
        <!--can do Selected="somethingevent??"-->
        <asp:DropDownList ID="NavDropDown" runat="server" >
            <asp:ListItem>Nav Icon</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>

            

            <asp:ListItem>Option 2</asp:ListItem>

        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--can I dodSdeledctedddevent happdens brings user to another page in website/site--->

        <!--help icon/question mark - button-->

        <asp:Button ID="helpButton" runat="server" Text="?"/>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--sign in button/login in; brings user to login page (mabye backend one for now)-->

        <asp:Button ID="loginButton" runat="server" Text="Sign In" OnClick="loginButton_Click"/>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--shopping cart button-->

        <asp:Button ID="shoppingCartButton" runat="server" Text="🛒" />


      

        <br />

        <!--still in header-->
        <!--for business dropdown-->
        <asp:DropDownList ID="DropDownList1" runat="server">

            <asp:ListItem>For Business</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>
        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--get it today--> 
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Get it Today</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>

        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--ink and toner menu/option; bring user to another page-->
        <asp:Button ID="Button1" runat="server" Text="Ink and Toner" OnClick="inkPage"/>



        <!--space space space-->
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--buy it again-->
        <asp:Button ID="Button2" runat="server" Text="Buy it Again" />

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--ideas -->
        <asp:DropDownList ID="DropDownList3" runat="server" >
            <asp:ListItem>Ideas</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>

        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--orders dropdown-->
        <asp:DropDownList ID="DropDownList4" runat="server" >
            <asp:ListItem>Orders</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>
        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--set your store-->
        <asp:Button ID="SetStoreBtn" runat="server" Text="Set Your Store" OnClick="SetStoreBtn_Click"/>


    </header> <!--end of header-->

    <br />

    <!--big promotions/deals - maybe on some sort of slideshow or slider thing? "C:\Users\Brown\OneDrive\Desktop\myprojects\SE256_Brown_Masterbackend\Imagess\navimage1.jpg"-->

    <div class="BigDeals1">

        <div class="dealRect1">
            <p>Deals/Promos</p>

            <img src="Imgs/promo1.png" class="promo1" />
        </div>
        <div class="dealRect2">
            <p>Deals/Promos</p>

            <img src="Imgs/promo2.png" class="promo2" />
        </div>
        <div class="dealRect3">
            <p>Deals/Promos</p>

            <img src="Imgs/promo3.png" class="promo3" />
        </div>

    </div>

    <br />
    <br />

    <div class="BigDeals2">
        <div class="deals2rect1">
            <p>Deals/Promos</p>

            <img src="Imgs/promo4.jpg" class="promo4" />
        </div>
        <div class="deals2rect2">
            <p>Deals/Promos</p>

            <img src="Imgs/promo5.jpg" class="promo5" />
        </div>
        <div class="deals2rect3">
            <p>Deals/Promos</p>

            <img src="Imgs/promo6.png" class="promo6" />
        </div>

    </div>

    <br />
    <br />

    <div class="someProducts">
        <div class="prod1">
            <p>Product1</p>

            <img src="Imgs/navimage1.jpg" class="prodimg1" />

            <!--commet-->

            <!--dd
                <img src="imagename.filename"/>
                otheer stuff
                -->
        </div>
        <div class="prod2">
            <p>Product2</p>

            <img src="Imgs/slideshow1.jpg" class="prodimg2" />
        </div>
        
    </div>

    <!--
        drop down navigation - trying to get it to work - to move user to another page...
        dd
        -->

    <div id="dropdown1">
        

        <br />
        <br />

    </div>

    


    <script src="Scripts/Home.js"></script>


    

</asp:Content>




<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">
    <!--Placeholder for breaking news content-->

    <!--<div>-->
        <!--<h1>Breaking News:</h1>-->
        <!--<p>
            After sharing his aweful brand of humor for decades, finds out that his jokes are not funny. Teacher shocked and amazed. His family and students request his face to be the image next to Dad-Jokes if it is added to dictionary.
        </p>-->
    <!--</div>-->


</asp:Content>




