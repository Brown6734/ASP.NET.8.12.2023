<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SE256_Brown_Masterbackend.Contact" %>

<%--fd

<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">
    <div>

    </div>
</asp:Content>
--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Our contact page.</h3>
    <address>
        Product Sellers<br />
        Tinode, 23992<br />
        <abbr title="Phone">P:</abbr>
        123-456-7892
    </address>

    <address>

        <strong>Contact Staff:</strong>   <a href="email@email.com">Staff Email</a><br />
        <strong>Support/Help:</strong> <a href="email@email.com">Help Email</a>
    </address>
</asp:Content>
