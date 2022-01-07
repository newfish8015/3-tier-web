<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="home.Service.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Order_id" DataSourceID="SERVICE" DefaultMode="Insert" Width="522px">
    <EditItemTemplate>
        Order_id:
        <asp:Label ID="Order_idLabel1" runat="server" Text='<%# Eval("Order_id") %>' />
        <br />
        Machine_id:
        <asp:TextBox ID="Machine_idTextBox" runat="server" Text='<%# Bind("Machine_id") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        seller_id:
        <asp:TextBox ID="seller_idTextBox" runat="server" Text='<%# Bind("seller_id") %>' />
        <br />
        buyer_id:
        <asp:TextBox ID="buyer_idTextBox" runat="server" Text='<%# Bind("buyer_id") %>' />
        <br />
        Staff_id:
        <asp:TextBox ID="Staff_idTextBox" runat="server" Text='<%# Bind("Staff_id") %>' />
        <br />
        Create_Date:
        <asp:TextBox ID="Create_DateTextBox" runat="server" Text='<%# Bind("Create_Date") %>' />
        <br />
        status:
        <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </EditItemTemplate>
    <InsertItemTemplate>
        Machine_id:<br />
        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="MEMBERLIST" DataTextField="title" DataValueField="Machine_id" SelectedValue='<%# Bind("Machine_id") %>'>
        </asp:DropDownList>
        <br />
        Price:<br />
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        seller_id:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="MEMber1" DataTextField="name" DataValueField="Member_id" SelectedValue='<%# Bind("seller_id") %>'>
        </asp:DropDownList>
        <br />
        buyer_id:
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="MEMber1" DataTextField="name" DataValueField="Member_id" SelectedValue='<%# Bind("buyer_id") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="MEMber1" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="select (first_name+' '+last_name) as name ,* from Membership ;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="MEMBERLIST" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT first_name+last_name as Name ,Phone ,seller_id,*, title,Machines.price,country,Payment_Method,condition
FROM ((Orders join Membership on Orders.seller_id=Membership.Member_id )
inner join Machines on  Orders.Machine_id= Machines.Machine_id)
;"></asp:SqlDataSource>
        <br />
        Staff_id:<br />
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="staff" DataTextField="name" DataValueField="Staff_id" SelectedValue='<%# Bind("Staff_id") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="staff" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="SELECT Staff_id, first_name, last_name, Account, Password, Power, first_name + ' ' + last_name AS name FROM Staff"></asp:SqlDataSource>
        <br />
        Create_Date:<br />
        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Create_Date") %>'></asp:TextBox>
        <br />
        status:<br />
        <asp:DropDownList ID="DropDownList4" runat="server" SelectedValue='<%# Bind("status") %>'>
            <asp:ListItem>close</asp:ListItem>
            <asp:ListItem>open</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
    <ItemTemplate>
        Order_id:
        <asp:Label ID="Order_idLabel" runat="server" Text='<%# Eval("Order_id") %>' />
        <br />
        Machine_id:
        <asp:Label ID="Machine_idLabel" runat="server" Text='<%# Bind("Machine_id") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        seller_id:
        <asp:Label ID="seller_idLabel" runat="server" Text='<%# Bind("seller_id") %>' />
        <br />
        buyer_id:
        <asp:Label ID="buyer_idLabel" runat="server" Text='<%# Bind("buyer_id") %>' />
        <br />
        Staff_id:
        <asp:Label ID="Staff_idLabel" runat="server" Text='<%# Bind("Staff_id") %>' />
        <br />
        Create_Date:
        <asp:Label ID="Create_DateLabel" runat="server" Text='<%# Bind("Create_Date") %>' />
        <br />
        status:
        <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SERVICE" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [Order_id] = @Order_id" InsertCommand="INSERT INTO [Orders] ([Machine_id], [Price], [seller_id], [buyer_id], [Staff_id], [Create_Date], [status]) VALUES (@Machine_id, @Price, @seller_id, @buyer_id, @Staff_id, @Create_Date, @status)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Machine_id] = @Machine_id, [Price] = @Price, [seller_id] = @seller_id, [buyer_id] = @buyer_id, [Staff_id] = @Staff_id, [Create_Date] = @Create_Date, [status] = @status WHERE [Order_id] = @Order_id">
    <DeleteParameters>
        <asp:Parameter Name="Order_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Machine_id" Type="Int32" />
        <asp:Parameter Name="Price" Type="Int32" />
        <asp:Parameter Name="seller_id" Type="Int32" />
        <asp:Parameter Name="buyer_id" Type="Int32" />
        <asp:Parameter Name="Staff_id" Type="Int32" />
        <asp:Parameter Name="Create_Date" Type="Int32" />
        <asp:Parameter Name="status" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Machine_id" Type="Int32" />
        <asp:Parameter Name="Price" Type="Int32" />
        <asp:Parameter Name="seller_id" Type="Int32" />
        <asp:Parameter Name="buyer_id" Type="Int32" />
        <asp:Parameter Name="Staff_id" Type="Int32" />
        <asp:Parameter Name="Create_Date" Type="Int32" />
        <asp:Parameter Name="status" Type="String" />
        <asp:Parameter Name="Order_id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Order_id" DataSourceID="new_order">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="Order_id" HeaderText="Order_id" InsertVisible="False" ReadOnly="True" SortExpression="Order_id" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="seller_id" HeaderText="seller_id" SortExpression="seller_id" />
        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
        <asp:BoundField DataField="country" HeaderText="country" SortExpression="country" />
        <asp:BoundField DataField="Payment_Method" HeaderText="Payment_Method" SortExpression="Payment_Method" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="new_order" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" DeleteCommand="DELETE  FROM Orders where Order_id in (select MAX(Order_id) from Orders) ;" SelectCommand="SELECT TOP 1 Order_id, Orders.Price,seller_id, first_name+last_name as Name,email, title,location,country,Payment_Method
FROM ((Orders join Membership on Orders.seller_id=Membership.Member_id )
inner join Machines on  Orders.Machine_id= Machines.Machine_id) ORDER BY Order_id DESC ; "></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ClearContent" runat="server">
</asp:Content>
