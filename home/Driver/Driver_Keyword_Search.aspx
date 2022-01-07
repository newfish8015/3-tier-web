<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Driver_Keyword_Search.aspx.cs" Inherits="home.Driver.Driver_Keyword_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClearContent" runat="server">
	<p>
		<form action="searchdriver.aspx" method="get">
			Keyword:
			<input id="Text1" type="text" name="keyword" />
			<input id="Button1" type="button" value="Search" />
		</form>
	</p>
</asp:Content>
