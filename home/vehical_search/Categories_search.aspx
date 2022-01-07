<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categories_search.aspx.cs" Inherits="home.Categories._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="category_saerch" DataTextField="description" DataValueField="category_id" Height="16px" Width="734px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="category_saerch" runat="server" ConnectionString="<%$ ConnectionStrings:vehical_BusinessConnectionString %>" SelectCommand="SELECT [category_id], [description] FROM [Categories]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Machine_id" DataSourceID="vehical_category_search" style="background-color: azure">
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
    <asp:SqlDataSource ID="vehical_category_search" runat="server" ConnectionString="<%$ ConnectionStrings:vehical_BusinessConnectionString %>" SelectCommand="SELECT * FROM [Machines] WHERE ([category_id] = @category_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="category_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
