<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_for.aspx.cs" Inherits="home.Service.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Service_1" DataTextField="Name" DataValueField="Member_id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="Service_1" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT DISTINCT *,last_name+' '+first_name AS Name FROM [Membership]"></asp:SqlDataSource>


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Service_2" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="seller_id" HeaderText="seller_id" SortExpression="seller_id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
            <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Service_2" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT first_name+' '+last_name as Name ,Phone ,seller_id,email,title,Machines.price,country,Payment_Method,condition
FROM ((Orders join Membership on Orders.seller_id=Membership.Member_id )
inner join Machines on  Orders.Machine_id= Machines.Machine_id)
where (seller_id Like '%'+ @Member_id+ '%' )
;">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Member_id" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
