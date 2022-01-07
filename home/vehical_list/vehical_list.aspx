<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="vehical_list.aspx.cs" Inherits="home.vehical.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Machine_id" DataSourceID="vehical_datagridview" DefaultMode="Insert" ForeColor="#333333">
        <EditItemTemplate>
            Machine_id:
            <asp:Label ID="Machine_idLabel1" runat="server" Text='<%# Eval("Machine_id") %>' />
            <br />
            category_id:
            <asp:TextBox ID="category_idTextBox" runat="server" Text='<%# Bind("category_id") %>' />
            <br />
            years:
            <asp:TextBox ID="yearsTextBox" runat="server" Text='<%# Bind("years") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            location:
            <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
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
            Driver_id:
            <asp:TextBox ID="Driver_idTextBox" runat="server" Text='<%# Bind("Driver_id") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            Machine_id:
            <asp:TextBox ID="Machine_idTextBox" runat="server" Text='<%# Bind("Machine_id") %>' />
            <br />
            category_id:
            <asp:TextBox ID="category_idTextBox" runat="server" Text='<%# Bind("category_id") %>' />
            <br />
            years:
            <asp:TextBox ID="yearsTextBox" runat="server" Text='<%# Bind("years") %>' />
            <br />
            price:
            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            <br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            location:
            <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
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
            Driver_id:
            <asp:TextBox ID="Driver_idTextBox" runat="server" Text='<%# Bind("Driver_id") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            Machine_id:
            <asp:Label ID="Machine_idLabel" runat="server" Text='<%# Eval("Machine_id") %>' />
            <br />
            category_id:
            <asp:Label ID="category_idLabel" runat="server" Text='<%# Bind("category_id") %>' />
            <br />
            years:
            <asp:Label ID="yearsLabel" runat="server" Text='<%# Bind("years") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
            <br />
            title:
            <asp:Label ID="titleLabel" runat="server" Text='<%# Bind("title") %>' />
            <br />
            location:
            <asp:Label ID="locationLabel" runat="server" Text='<%# Bind("location") %>' />
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
            Driver_id:
            <asp:Label ID="Driver_idLabel" runat="server" Text='<%# Bind("Driver_id") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Machine_id" DataSourceID="vehical_datagridview" style="background-color: azure" AllowSorting="True">
    <Columns>
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Machine_id" HeaderText="Machine_id" ReadOnly="True" SortExpression="Machine_id" />
        <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
        <asp:BoundField DataField="years" HeaderText="years" SortExpression="years" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
        <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
        <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
        <asp:BoundField DataField="condition" HeaderText="condition" SortExpression="condition" />
        <asp:BoundField DataField="Driver_id" HeaderText="Driver_id" SortExpression="Driver_id" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="vehical_datagridview" runat="server" ConnectionString="<%$ ConnectionStrings:vehical_BusinessConnectionString %>" SelectCommand="SELECT [Machine_id], [category_id], [years], [price], [title], [location], [country], [Payment_Method], [condition], [Driver_id] FROM [Machines]" DeleteCommand="DELETE FROM [Machines] WHERE [Machine_id] = @Machine_id" InsertCommand="INSERT INTO [Machines] ([Machine_id], [category_id], [years], [price], [title], [location], [country], [Payment_Method], [condition], [Driver_id]) VALUES (@Machine_id, @category_id, @years, @price, @title, @location, @country, @Payment_Method, @condition, @Driver_id)" UpdateCommand="UPDATE [Machines] SET [category_id] = @category_id, [years] = @years, [price] = @price, [title] = @title, [location] = @location, [country] = @country, [Payment_Method] = @Payment_Method, [condition] = @condition, [Driver_id] = @Driver_id WHERE [Machine_id] = @Machine_id">
    <DeleteParameters>
        <asp:Parameter Name="Machine_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Machine_id" Type="Int32" />
        <asp:Parameter Name="category_id" Type="Int32" />
        <asp:Parameter Name="years" Type="Int32" />
        <asp:Parameter Name="price" Type="Double" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="location" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="Payment_Method" Type="String" />
        <asp:Parameter Name="condition" Type="String" />
        <asp:Parameter Name="Driver_id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="category_id" Type="Int32" />
        <asp:Parameter Name="years" Type="Int32" />
        <asp:Parameter Name="price" Type="Double" />
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="location" Type="String" />
        <asp:Parameter Name="country" Type="String" />
        <asp:Parameter Name="Payment_Method" Type="String" />
        <asp:Parameter Name="condition" Type="String" />
        <asp:Parameter Name="Driver_id" Type="Int32" />
        <asp:Parameter Name="Machine_id" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
