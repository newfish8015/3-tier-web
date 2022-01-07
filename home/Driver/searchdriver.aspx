<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searchdriver.aspx.cs" Inherits="home.Driver.searchdriver" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Driver_id" DataSourceID="searchdriverdata" style="background-color:azure" Width="438px">
		<Columns>
			<asp:BoundField DataField="Driver_id" HeaderText="Driver_id" InsertVisible="False" ReadOnly="True" SortExpression="Driver_id" />
			<asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
			<asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
			<asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
			<asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
			<asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
			<asp:BoundField DataField="License" HeaderText="License" SortExpression="License" />
		</Columns>
		<EmptyDataTemplate>
			Sorry,your keyword returned no result
		</EmptyDataTemplate>
	</asp:GridView>
	<asp:SqlDataSource ID="searchdriverdata" runat="server" ConnectionString="<%$ ConnectionStrings:Driver_BusinessConnectionString %>" SelectCommand="SELECT * FROM [Driver] WHERE (([first_name] LIKE '%' + @first_name + '%') OR ([last_name] LIKE '%' + @last_name + '%'))">
		<SelectParameters>
			<asp:QueryStringParameter Name="first_name" QueryStringField="keyword" />
			<asp:QueryStringParameter Name="last_name" QueryStringField="keyword" />
		</SelectParameters>
	</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClearContent" runat="server">
</asp:Content>
