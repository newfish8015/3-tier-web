<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Driver_List.aspx.cs" Inherits="home.Driver.Driver_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:FormView ID="FormView1" runat="server" DataKeyNames="Driver_id" DataSourceID="DriverList" style="background-color: azure" DefaultMode="Insert">
		<EditItemTemplate>
			Driver_id:
			<asp:Label ID="Driver_idLabel1" runat="server" Text='<%# Eval("Driver_id") %>' />
			<br />
			first_name:
			<asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
			<br />
			last_name:
			<asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
			<br />
			Gender:
			<asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
			<br />
			age:
			<asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
			<br />
			Salary:
			<asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
			<br />
			License:
			<asp:TextBox ID="LicenseTextBox" runat="server" Text='<%# Bind("License") %>' />
			<br />
			<asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
			&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
		</EditItemTemplate>
		<InsertItemTemplate>
			first_name:
			<asp:TextBox ID="first_nameTextBox" runat="server" Text='<%# Bind("first_name") %>' />
			<br />
			last_name:
			<asp:TextBox ID="last_nameTextBox" runat="server" Text='<%# Bind("last_name") %>' />
			<br />
			Gender:
			<asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
			<br />
			age:
			<asp:TextBox ID="ageTextBox" runat="server" Text='<%# Bind("age") %>' />
			<br />
			Salary:
			<asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
			<br />
			License:
			<asp:TextBox ID="LicenseTextBox" runat="server" Text='<%# Bind("License") %>' />
			<br />
			<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
			&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
		</InsertItemTemplate>
		<ItemTemplate>
			Driver_id:
			<asp:Label ID="Driver_idLabel" runat="server" Text='<%# Eval("Driver_id") %>' />
			<br />
			first_name:
			<asp:Label ID="first_nameLabel" runat="server" Text='<%# Bind("first_name") %>' />
			<br />
			last_name:
			<asp:Label ID="last_nameLabel" runat="server" Text='<%# Bind("last_name") %>' />
			<br />
			Gender:
			<asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
			<br />
			age:
			<asp:Label ID="ageLabel" runat="server" Text='<%# Bind("age") %>' />
			<br />
			Salary:
			<asp:Label ID="SalaryLabel" runat="server" Text='<%# Bind("Salary") %>' />
			<br />
			License:
			<asp:Label ID="LicenseLabel" runat="server" Text='<%# Bind("License") %>' />
			<br />
			<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
			&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
			&nbsp;
		</ItemTemplate>
	</asp:FormView>
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Driver_id" DataSourceID="DriverList" style="background-color: azure" AllowSorting="True">
	<Columns>
		<asp:BoundField DataField="Driver_id" HeaderText="Driver_id" InsertVisible="False" ReadOnly="True" SortExpression="Driver_id" />
		<asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
		<asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
		<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
		<asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
		<asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
		<asp:BoundField DataField="License" HeaderText="License" SortExpression="License" />
	</Columns>
</asp:GridView>
<asp:SqlDataSource ID="DriverList" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_BusinessConnectionString %>" SelectCommand="SELECT * FROM [Driver]" DeleteCommand="DELETE FROM [Driver] WHERE [Driver_id] = @Driver_id" InsertCommand="INSERT INTO [Driver] ([first_name], [last_name], [Gender], [age], [Salary], [License]) VALUES (@first_name, @last_name, @Gender, @age, @Salary, @License)" UpdateCommand="UPDATE [Driver] SET [first_name] = @first_name, [last_name] = @last_name, [Gender] = @Gender, [age] = @age, [Salary] = @Salary, [License] = @License WHERE [Driver_id] = @Driver_id">
	<DeleteParameters>
		<asp:Parameter Name="Driver_id" Type="Int32" />
	</DeleteParameters>
	<InsertParameters>
		<asp:Parameter Name="first_name" Type="String" />
		<asp:Parameter Name="last_name" Type="String" />
		<asp:Parameter Name="Gender" Type="String" />
		<asp:Parameter Name="age" Type="Int32" />
		<asp:Parameter Name="Salary" Type="Int32" />
		<asp:Parameter Name="License" Type="Int32" />
	</InsertParameters>
	<UpdateParameters>
		<asp:Parameter Name="first_name" Type="String" />
		<asp:Parameter Name="last_name" Type="String" />
		<asp:Parameter Name="Gender" Type="String" />
		<asp:Parameter Name="age" Type="Int32" />
		<asp:Parameter Name="Salary" Type="Int32" />
		<asp:Parameter Name="License" Type="Int32" />
		<asp:Parameter Name="Driver_id" Type="Int32" />
	</UpdateParameters>
	</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClearContent" runat="server">
</asp:Content>
