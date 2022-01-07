<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SIGNUP1.aspx.cs" Inherits="home.Service.SIGNUP1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Member_id" DataSourceID="SERVICE" DefaultMode="Insert" Width="458px">
        <EditItemTemplate>
            Member_id:
            <asp:Label ID="Member_idLabel1" runat="server" Text='<%# Eval("Member_id") %>' />
            <br />
            email:
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            first_name:
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            Adress:
            <asp:TextBox ID="AdressTextBox" runat="server" Text='<%# Bind("Adress") %>' />
            <br />
            Birth_Date:
            <asp:TextBox ID="Birth_DateTextBox" runat="server" Text='<%# Bind("Birth_Date") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Member_id:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="MAX_memberid" DataTextField="M" DataValueField="M" SelectedValue='<%# Bind("Member_id") %>'>
            </asp:DropDownList>
            <asp:SqlDataSource ID="MAX_memberid" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" SelectCommand="select MAX(Member_id)+1 AS M  from Membership ;"></asp:SqlDataSource>
            <br />
            email:<br />
            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            <br />
            Phone:<br />
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            first_name:<br />
            <asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:<br />
            <asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            Adress:<br />
            <asp:TextBox ID="AdressTextBox" runat="server" Text='<%# Bind("Adress") %>' />
            <br />
            Birth_Date:<br />
            <asp:TextBox ID="Birth_DateTextBox" runat="server" Text='<%# Bind("Birth_Date") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            Member_id:
            <asp:Label ID="Member_idLabel" runat="server" Text='<%# Eval("Member_id") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            first_name:
            <asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
            <br />
            last_name:
            <asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
            <br />
            Adress:
            <asp:Label ID="AdressLabel" runat="server" Text='<%# Bind("Adress") %>' />
            <br />
            Birth_Date:
            <asp:Label ID="Birth_DateLabel" runat="server" Text='<%# Bind("Birth_Date") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="New Orders" />
&nbsp;<asp:SqlDataSource ID="SERVICE" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" DeleteCommand="DELETE FROM [Membership] WHERE [Member_id] = @Member_id" InsertCommand="INSERT INTO [Membership] ([Member_id], [email], [Phone], [first_name], [last_name], [Adress], [Birth_Date]) VALUES (@Member_id, @email, @Phone, @first_name, @last_name, @Adress, @Birth_Date)" SelectCommand="SELECT * FROM [Membership] WHERE ([Member_id] = @Member_id)" UpdateCommand="UPDATE [Membership] SET [email] = @email, [Phone] = @Phone, [first_name] = @first_name, [last_name] = @last_name, [Adress] = @Adress, [Birth_Date] = @Birth_Date WHERE [Member_id] = @Member_id">
        <DeleteParameters>
            <asp:Parameter Name="Member_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Member_id" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Phone" Type="Int32" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="Adress" Type="String" />
            <asp:Parameter Name="Birth_Date" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="Member_id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Phone" Type="Int32" />
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="Adress" Type="String" />
            <asp:Parameter Name="Birth_Date" Type="String" />
            <asp:Parameter Name="Member_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Member_id" DataSourceID="SEVER2">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Member_id" HeaderText="Member_id" ReadOnly="True" SortExpression="Member_id" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
            <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
            <asp:BoundField DataField="Birth_Date" HeaderText="Birth_Date" SortExpression="Birth_Date" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SEVER2" runat="server" ConnectionString="<%$ ConnectionStrings:Service_BusinessConnectionString %>" DeleteCommand="DELETE FROM Membership WHERE (Member_id IN (SELECT MAX(Member_id) AS Expr1 FROM Membership AS Membership_1))" SelectCommand="SELECT TOP 1 * FROM Membership  ORDER BY Member_id DESC ;"></asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClearContent" runat="server">
</asp:Content>
