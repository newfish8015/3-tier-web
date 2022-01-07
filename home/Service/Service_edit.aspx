<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Service_edit.aspx.cs" Inherits="home.Service.Service_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Service_3" DataTextField="Name" DataValueField="seller_id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="Service_3" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT first_name+last_name as Name ,Phone ,seller_id, buyer_id,title,Machines.price,country,Payment_Method,condition
FROM ((Orders join Membership on Orders.seller_id=Membership.Member_id )
inner join Machines on  Orders.Machine_id= Machines.Machine_id)
;"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="Service_3">
        <EditItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            seller_id:
            <asp:TextBox ID="seller_idTextBox" runat="server" Text='<%# Bind("seller_id") %>' />
            <br />
            buyer_id:
            <asp:TextBox ID="buyer_idTextBox" runat="server" Text='<%# Bind("buyer_id") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            Payment_Method:
            <asp:TextBox ID="Payment_MethodTextBox" runat="server" Text='<%# Bind("Payment_Method") %>' />
            <br />
            condition:
            <asp:TextBox ID="conditionTextBox" runat="server" Text='<%# Bind("condition") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            seller_id:
            <asp:TextBox ID="seller_idTextBox" runat="server" Text='<%# Bind("seller_id") %>' />
            <br />
            buyer_id:
            <asp:TextBox ID="buyer_idTextBox" runat="server" Text='<%# Bind("buyer_id") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            country:
            <asp:TextBox ID="countryTextBox" runat="server" Text='<%# Bind("country") %>' />
            <br />
            Payment_Method:
            <asp:TextBox ID="Payment_MethodTextBox" runat="server" Text='<%# Bind("Payment_Method") %>' />
            <br />
            condition:
            <asp:TextBox ID="conditionTextBox" runat="server" Text='<%# Bind("condition") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            seller_id:
            <asp:Label ID="seller_idLabel" runat="server" Text='<%# Bind("seller_id") %>' />
            <br />
            buyer_id:
            <asp:Label ID="buyer_idLabel" runat="server" Text='<%# Bind("buyer_id") %>' />
            <br />
            title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
            <br />
            country:
            <asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' />
            <br />
            Payment_Method:
            <asp:Label ID="Payment_MethodLabel" runat="server" Text='<%# Bind("Payment_Method") %>' />
            <br />
            condition:
            <asp:Label ID="conditionLabel" runat="server" Text='<%# Bind("condition") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
</asp:Content>
