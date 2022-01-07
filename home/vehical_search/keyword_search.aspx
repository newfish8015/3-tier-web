<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="keyword_search.aspx.cs" Inherits="home.vehical_search.keyword_search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Keyword:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="vehical_search_Keyword_Button" runat="server" Text="Search" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Machine_id" DataSourceID="vehical_keyword_search" style="background-color: azure">
            <Columns>
                <asp:BoundField DataField="Machine_id" HeaderText="Machine_id" ReadOnly="True" SortExpression="Machine_id" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
                <asp:BoundField DataField="Driver_id" HeaderText="Driver_id" SortExpression="Driver_id" />
                <asp:BoundField DataField="years" HeaderText="years" SortExpression="years" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
                <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="vehical_keyword_search" runat="server" ConnectionString="<%$ ConnectionStrings:vehical_BusinessConnectionString %>" SelectCommand="SELECT * FROM [Machines] WHERE ([title] LIKE '%' + @title + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="title" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
