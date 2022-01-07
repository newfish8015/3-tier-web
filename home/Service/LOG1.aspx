<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LOG1.aspx.cs" Inherits="home.Service.LOG1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ClearContent" runat="server">

    
        <p>
            <form action="Login.aspx" method="get">
            Login_name:<input id="Text1" type="text" name="Name" />
            Login_Email:<input id="Text2" type="text" name="Email" />
        </p>
        <p>

            <input id="Submit1" type="submit" value="submit" />
            </form>
        </p>
    

</asp:Content>
