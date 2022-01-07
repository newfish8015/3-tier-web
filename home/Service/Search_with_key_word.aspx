<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search_with_key_word.aspx.cs" Inherits="home.Service.Search_with_key_word" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Keyword:
        

        <asp:TextBox ID="TextBox1" runat="server"  ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
        
        
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Service_2" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="seller_id" HeaderText="seller_id" SortExpression="seller_id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
                <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
                <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
            </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="Service_2" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT first_name+' '+last_name as Name ,Phone ,seller_id, title,Machines.price,country,Payment_Method,condition
FROM ((Orders join Membership on Orders.seller_id=Membership.Member_id )
inner join Machines on  Orders.Machine_id= Machines.Machine_id)
where ((first_name+' '+last_name) Like '%'+ @Name+ '%' )
;">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
