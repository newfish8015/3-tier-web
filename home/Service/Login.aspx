<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="home.Service.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SERVCICE2">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="seller_id" HeaderText="seller_id" SortExpression="seller_id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
            <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
            <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
        </Columns>
        <EmptyDataTemplate >
            <p style="color:red; font-size:150%;">
            Sorry you haven&#39;t have account ,pleat sign up first!
            <p/>
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="SERVCICE2" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT first_name+last_name as Name ,Phone,email ,seller_id, title,Machines.price,country,Payment_Method,condition
FROM ((Orders join Membership on Orders.seller_id=Membership.Member_id )
inner join Machines on  Orders.Machine_id= Machines.Machine_id) 
where ((first_name+' '+last_name) Like '%'+ @Name+ '%' ) and (email LIKE '%'+ @Email+ '%' )
;">
        <SelectParameters>
            <asp:QueryStringParameter Name="Name" QueryStringField="Name" />
            <asp:QueryStringParameter Name="Email" QueryStringField="Email" />
        </SelectParameters>
    </asp:SqlDataSource>


<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New orders" />


</asp:Content>
