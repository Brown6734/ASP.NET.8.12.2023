<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EBookSearch.aspx.cs" Inherits="SE256_Brown_Masterbackend.Backend.EBookSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BreakingNewsContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Products1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Products2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <h1>EBook Search</h1>

    <p>Optional Search Criteria to narrow search results</p>

    <p>
        Book Title: <asp:TextBox ID="txtTitle" runat="server" Columns="30" />

        &nbsp;&nbsp;&nbsp;&nbsp;

        Author's Last Name: <asp:TextBox ID="txtAuthorLast" runat="server" Columns="30" />

    </p>

    <br />

    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"/>

    <br />
    <br />

    <asp:DataGrid ID="dgResults" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundColumn DataField="Title" HeaderText="Book Title" />
            <asp:BoundColumn DataField="AuthorFirst" HeaderText="Author's First Name" />
            <asp:BoundColumn DataField="AuthorLast" HeaderText="Author's Last Name" />
            <asp:BoundColumn DataField="DatePublished" HeaderText="Date Published" />
            <asp:HyperLinkColumn Text="Edit" DataNavigateUrlFormatString ="~/Backend/EBookMgr.aspx?EBook_ID={0}" DataNavigateUrlField="eBook_ID" />
        </Columns>

    </asp:DataGrid>

    <br /><br />
    <br /><br />

    <h1>Another output option: creating our own output while looping thru records using a repeater and item template</h1>

    <asp:Repeater ID="rptSearch" runat="server">
        <HeaderTemplate>
            <asp:Label ID="lblHeader" runat="server" Text="Your results...." />
        </HeaderTemplate>

        <ItemTemplate>
            <br />
            <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>' />
            <asp:Label ID="lblAuthorFirst" runat="server" Text='<%# Eval("AuthorFirst") %>' />
            <asp:Label ID="lblAuthorLast" runat="server" Text='<%# Eval("DatePublished")%>' />

            <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit" NavigateUrl='<%# Eval("EBook_ID", "EBookMgr.aspx?EBook_ID={0}")%>' />

        </ItemTemplate>

    </asp:Repeater>

    <br /> <br />
    <br /> <br />

    <h1>Another output option: Creating our own output via a method that loops through each record and developing All the HTML</h1>

    <asp:Literal ID="litResults" runat="server" Text="" />

</asp:Content>
