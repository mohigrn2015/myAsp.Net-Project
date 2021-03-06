<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="viewReport.aspx.cs" Inherits="AspDotNetProject.Report.viewReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color: #800000; font-size: 25px; font-weight: bold; font-style: normal; font-variant: small-caps; text-transform: uppercase; border-bottom-style: outset">View Report</h3>
     <asp:Button ID="btnReport" runat="server" Text="View Report"  OnClick="btnReport_Click" Height="35px" Width="186px" BackColor="#009999" ForeColor="#ffffff"/>
</asp:Content>
