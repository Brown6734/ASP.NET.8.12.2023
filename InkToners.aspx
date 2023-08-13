<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InkToners.aspx.cs" Inherits="SE256_Brown_Masterbackend.InkToners" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Products1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Products2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <header class="headRed"><!--beginning of header; give it a class of headRed  &nbsp;-->
        
        <!--logo--> 
        <asp:Button ID="logoButton" runat="server" Text="logo" OnClick="logoButton_Click"/>

        &nbsp;

        <!--shop dropdown--> 
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>Shop</asp:ListItem>
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

        <asp:Button ID="loginButton" runat="server" Text="Sign In" />

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

        <!--get it today dropdown-->
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Get it Today</asp:ListItem>
            <asp:ListItem>Option 1</asp:ListItem>
            <asp:ListItem>Option 2</asp:ListItem>

        </asp:DropDownList>

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--ink and toner menu/option; bring user to another page-->
        <asp:Button ID="inkPage" runat="server" Text="Ink and Toner" />



        <!--space space space-->
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--buy it again-->
        <asp:Button ID="Button2" runat="server" Text="Buy it Again" />

        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

        <!--ideas dropdown-->
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

    <div class="ink1">
        <p>Ink number one</p>
    </div>

    <br />
    <br />

    <div class="ink2">
        <p>Ink number two</p>

    </div>

    <br />
    <br />

    <div class="toner1">
        <p>Toner number one</p>

    </div>

    <br />
    <br />

    <div class="toner2">
        <p>Toner number two</p>

    </div>

</asp:Content>
