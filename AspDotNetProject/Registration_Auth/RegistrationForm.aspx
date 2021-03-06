<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master_Page.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="AspDotNetProject.Registration_Auth.RegistrationForm" %>

<%@ Register Src="~/ProductUserControl.ascx" TagPrefix="uc1" TagName="ProductUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <uc1:ProductUserControl runat="server" id="ProductUserControl" />
    <br />
    If you registered, Login here 
     <a href="LoginPage.aspx"> Go to Login</a>
               
</asp:Content> 
