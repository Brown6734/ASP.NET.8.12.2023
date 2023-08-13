<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EbookMgr.aspx.cs" Inherits="SE256_Brown_Masterbackend.Backend.EbookMgr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">

    <a href="~/Backend/ControlPanel.aspx" runat="server">Return to Control Panel</a>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Products1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Products2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <table>

        <!--comment-->

        <!--This is for later use-->

        <tr>
            <td>EBook ID</td>
            <td>
                <asp:Label ID="lblEbook_ID" runat="server" />
            </td>
        </tr>

        <!--Book Title-->

        <tr>
            <td>Book Title</td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" MaxLength="255" />
            </td>
        </tr>

        <!--Author Info-->

        <tr>
            <td>Author's First Name</td>
            <td>
                <asp:TextBox ID="txtAuthorFirst" runat="server" MaxLength="20" />
            </td>
        </tr>

        <!--Author last name-->

        <tr>
            <td>Author's Last Name</td>
            <td>
                <asp:TextBox ID="txtAuthorLast" runat="server" MaxLength="40" />
            </td>
        </tr>

        <!--author email-->

        <tr>
            <td>Author's Email</td>
            <td>
                <asp:TextBox ID="txtAuthorEmail" runat="server" MaxLength="20" />
            </td>
        </tr>

        <!--date published-->

        <tr>
            <td>Date Published</td>
            <td>
                <asp:Calendar ID="calDatePublished" runat="server" />
            </td>
        </tr>



        <!--# of pages-->

        <tr>
            <td>Number of Pages</td>
            <td>
                <asp:TextBox ID="txtPages" runat="server" MaxLength="5" />
            </td>
        </tr>

        <!--price-->

        <tr>
            <td>Price per copy</td>
            <td>
                $<asp:TextBox ID="txtPrice" runat="server" MaxLength="10" />
            </td>
        </tr>

        <!--bookmark page-->

        <tr>
            <td>Bookmark Page</td>
            <td>
                <asp:TextBox ID="txtBookmarkPage" runat="server" MaxLength="5" />
            </td>
        </tr>

        <!--date rental expires-->

        <tr>
            <td>Date Rental Expires</td>
            <td>
                <asp:Calendar ID="calRentalExpires" runat="server" />
            </td>
        </tr>

    </table>

    <!--button to add a book to DB... but right now, we just want to see if we have it-->

    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />

    <!--feedback label is intended to help us see information, such as errors or confirmation of something-->

    <br />
    <br />

    <asp:Label ID="lblFeedback" runat="server" />

    <!--price-->


</asp:Content>
