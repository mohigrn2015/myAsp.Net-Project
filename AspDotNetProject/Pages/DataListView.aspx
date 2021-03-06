<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="DataListView.aspx.cs" Inherits="AspDotNetProject.Pages.DataListView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="274px">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            ProductId:
            <asp:Label ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
            <br />
            ShortDescription:
            <asp:Label ID="ShortDescriptionLabel" runat="server" Text='<%# Eval("ShortDescription") %>' />
            <br />
            LongDescription:
            <asp:Label ID="LongDescriptionLabel" runat="server" Text='<%# Eval("LongDescription") %>' />
            <br />
            CategoryId:
            <asp:Label ID="CategoryIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' />
            <br />
            EntryDate:
            <asp:Label ID="EntryDateLabel" runat="server" Text='<%# Eval("EntryDate") %>' />
            <br />
            ImageFile:
            <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
            <br />
            ImageName:
            <asp:Label ID="ImageNameLabel" runat="server" Text='<%# Eval("ImageName") %>' />
            <br />
            UnitPrice:
            <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteProduct" InsertMethod="SaveProduct" SelectMethod="GetProducts" TypeName="AspDotNetProject.Models.ProductGateWay" UpdateMethod="UpdateProduct">
        <DeleteParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="EntryDate" Type="DateTime" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="EntryDate" Type="DateTime" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ImageName" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
