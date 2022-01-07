<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="location_search.aspx.cs" Inherits="home.vehical_search.location_search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="location_search_data_sourse" DataTextField="location" DataValueField="location">
    </asp:DropDownList>
    <asp:SqlDataSource ID="location_search_data_sourse" runat="server" ConnectionString="<%$ ConnectionStrings:vehical_BusinessConnectionString %>" SelectCommand="SELECT [location] FROM [Machines]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Machine_id" DataSourceID="location_search_list" style="background-color:azure">
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
    <asp:SqlDataSource ID="location_search_list" runat="server" ConnectionString="<%$ ConnectionStrings:vehical_BusinessConnectionString %>" SelectCommand="SELECT * FROM [Machines] WHERE ([location] = @location)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="location" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
