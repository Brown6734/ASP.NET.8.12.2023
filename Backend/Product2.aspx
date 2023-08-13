<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product2.aspx.cs" Inherits="SE256_Brown_Masterbackend.Backend.Products2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Products1" runat="server">

    <!--make this website look some what like Staples.com website-->

    <link href="../Content/Products.css" rel="stylesheet" />



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Products2" runat="server">

    <!--comment-->

    <!--comment-->

    <!--lab assigment #3 criteria:-->

    <!--utilize this week's lesson to expand your base Web Forms project-->

    <!--your project should include the following:-->

    <!--create a base class to collect data pertinent to your website-->

    <!--incorporate a class to validate data and implement it within the Set's within the base class-->

    <!--build a web form to collect the necessary data via form and build the code side to validate data and return feedback to the user to confirm errors or proper data being received-->

    <!--develop a factory class to inherit the base class, build upon its data collection, and add the ability to Insert a record to your DB table-->

    <!--Update the code-behind page to insert a new record based on the form, if there are no errors-->

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <table>

    <!--Product ID-->
        <tr>
            <td>Product ID</td>
            <td>
                <asp:Label ID="lblProduct_ID" runat="server" />
            </td>
        </tr>

    <!--Product Title/Name-->
        <tr>
            <td>Product Title/Name</td>
            <td>
                <asp:TextBox ID="txtProdName" runat="server" MaxLength="255" />
            </td>
        </tr>

    <!--Product Manufacturer-->
        <tr>
            <td>Product Manufacturer</td>
            <td>
                <asp:TextBox ID="txtProdManu" runat="server" MaxLength="255" />
            </td>
        </tr>

    <!--Product Price-->
        <tr>
            <td>Product Price</td>
            <td>
                $<asp:TextBox ID="txtProdPrice" runat="server" MaxLength="10" />
            </td>
        </tr>


    <!--Product Available-->
        <tr>
            <td>Product Available</td>
            <td>
                <asp:CheckBox ID="checkAvaiable" runat="server" />
            </td>
        </tr>


    


    <!--Product Description-->
        <tr>
            <td>Product Description</td>
            <td>
                <asp:TextBox ID="txtProdDescrip" runat="server" />
            </td>
        </tr>

        <!--Product Manu date-->
        <tr>
            <td>Product Manufactured Date</td>
            <td>
                <asp:Calendar ID="calManuDate" runat="server" />
            </td>
        </tr>

        <!--Product Quant on hand-->
        <tr>
            <td>Product Quantity on Hand</td>
            <td>
                <asp:TextBox ID="txtQuantOnHand" runat="server" maxLength="100"/>
            </td>
        </tr>




    </table>

    <br />

    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnpAdd_Click" />

    <br />
    <br />

    <!--cdd-->

    <asp:Label ID="lblFeedback" runat="server" />

    <!--dcc s
        <assp:sCossntesnt IsDs=s"sCosnteddsnt3" CosntessntPslaceHssolderID=s"Prosdsucts1" russsnat="sservddder">

    add some products

    what would a product have?
    description; manufacturer; price
    image;
    comment

    some css ideas:
        table styling
        img styling
        

    <table class="table1">

        <tr>
            <td>start of item title
                <adsp:Ldabel IdD="Ldabel1" rudnat="sedrver" Tdext="Itdem Tidtle" FordeCodlord="Ivodry"/>
            </td>end of item title

            <td>
                <p>&nbsp;&nbsp;&nbsp;</p>
            </td>

            <td>start of item description
                <dasp:Ldabel IdD="Ladbel2" rundat="sedrver" Texdt="Itdem Descridption" FdoreCdolor="Ivdory"/>
            </td>end of item description

            <td>
                <p>&nbsp;&nbsp;&nbsp;</p>
            </td>

            <td>start of item manufacturer
                <adsp:Ladbel IDd="Labedl3" rudnat="serdver" Tedxt="Itdem Manufacdturer" ForedColor="Ivdory"/>
            </td>end of item manufacturer

            <td>
                <p>&nbsp;&nbsp;&nbsp;</p>
            </td>

            <td>start of item price
                <aspd:Labdel IdD="Ldabel4" rudnat="serdver" Text="ItemddPdriddce" FdoreCdolodrd="Idvodry"/>
            </td>end of item price

            <td>
                <p>&nbsp;&nbsp;&nbsp;</p>
            </td>

            <td>start of item avaiable
                <asdp:Ladbel IdD=d"Labdel5" rundat="sedrvedr" Tedxt="Ids thde idtem avadiadble?" FdoreCdoldor="Ivdory"/>
            </td>end of item avaiable

            <td>
                <p>&nbsp;&nbsp;&nbsp;</p>
            </td>

            <td>start of item image
                <assp:Lasbdel IdDds="Label6" drundatd="sesrver" Tsdext="Itesm Image" FordeColdor="Iddvory"/>
                item image: <asp:Image ID="imageid" runat=seerfdrver" ImageUrl="url" AlternateText ="text in here" width="stuff" height="stuff"

                

            </td>end of item image

            
        </tr>

    </table>

    <table class="table2">
        this is where actual product information/data will go

        <tr>
            <td>start of item title
                <p>Item 1 Title</p>

            </td>end of item title

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item description
                <p>Item 1 Description</p>

            </td>end of item description

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item manufacturer
                <p>Item 1 Manufacturer</p>

            </td>end of item manufacturer

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item price
                <p>Item 1 Price</p>

            </td>end of item price

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item avaiable
                <p>Item 1 avaiable</p>

            </td>end of item avaiable

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item image
                <p>Item 1 Image</p>



                item image: <asp:Image ID="imageid" runat=seerfdrver" ImageUrl="url" AlternateText ="text in here" width="stuff" height="stuff"

                could also do an image tag <img src="img_girl.jpg" alt="Girl in a jacket" width="500" height="600"> 

            </td>end of item image

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of product review link
                <a runat="server" href="~/Reviews">Reviews </a>
            </td>end of product review link

        </tr>



    </table>

    <table class="table2">
        this is where actual product information/data will go

        <tr>
            <td>start of item title
                <p>Item 2 Title</p>

            </td>end of item title

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item description
                <p>Item 2 Description</p>

            </td>end of item description

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item manufacturer
                <p>Item 2 Manufacturer</p>

            </td>end of item manufacturer

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item price
                <p>Item 2 Price</p>

            </td>end of item price

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item avaiable
                <p>Item 2 avaiable</p>

            </td>end of item avaiable

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of item image
                <p>Item 2 Image</p>



                item image: <asp:Image ID="imageid" runat=seerfdrver" ImageUrl="url" AlternateText ="text in here" width="stuff" height="stuff"

                could also do an image tag <img src="img_girl.jpg" alt="Girl in a jacket" width="500" height="600"> 

            </td>end of item image

            <td>
                <p>&nbsp;&nbsp;</p>
            </td>

            <td>start of product review link
                <a runat="server" href="~/Reviews">Reviews </a>
            </td><!--end of product review link

        </tr>



    </table>

</asdsp:Cosnsstesnst>-->
    

</asp:Content>
