<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="SE256_Brown_Masterbackend.Backend.ControlPanel" %>


<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">
</asp:Content>
    

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Control Panel</h2>

        <br />
        <table>

            <tr>
                <td>
                    <a href="EBookMgr.aspx" runat="server">Add an EBook</a>
                </td>
                

            </tr>

            <tr>
                <td>
                    <a href="EBookSearch.aspx" runat="server">Search our EBooks</a>
                </td>
            </tr>

            <tr>
                <td>
                    <a href="Product2.aspx" runat="server">Add a Product</a>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="btnLogout" runat="server" Text="Log Out" OnClick="btnLogout_Click" />
                </td>
            </tr>

        </table>

        <br />
        <br />


        <!--<table>
            <tr>
                <td ID="td1" OnClick="changeProducts">
                    <p>Category: Fun</p>
                    d

                    this should update products page
                    I would have to connect this page to the products page
                        so it can be updated
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="things" NavigateUrl="~/Products.aspx" >HyperLink</asp:HyperLink>


                </td>
                <td ID="td2">
                    <p>more words</p>
                    d

                    d
                </td>
            </tr>

            
            


        </table>-->

        <br />
        <br />






    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Products1" runat="server">



</asp:Content>
