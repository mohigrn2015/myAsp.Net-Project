<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="AspDotNetProject.Pages.ListView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FFF8DC;">ProductId:
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
                CategoryName:
                <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #008A8C;color: #FFFFFF;">ProductId:
                <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />
                ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />
                LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />
                CategoryId:
                <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                <br />
                EntryDate:
                <asp:TextBox ID="EntryDateTextBox" runat="server" Text='<%# Bind("EntryDate") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                ImageName:
                <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                <br />
                CategoryName:
                <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">ProductId:
                <asp:TextBox ID="ProductIdTextBox" runat="server" Text='<%# Bind("ProductId") %>' />
                <br />ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                <br />ShortDescription:
                <asp:TextBox ID="ShortDescriptionTextBox" runat="server" Text='<%# Bind("ShortDescription") %>' />
                <br />LongDescription:
                <asp:TextBox ID="LongDescriptionTextBox" runat="server" Text='<%# Bind("LongDescription") %>' />
                <br />CategoryId:
                <asp:TextBox ID="CategoryIdTextBox" runat="server" Text='<%# Bind("CategoryId") %>' />
                <br />EntryDate:
                <asp:TextBox ID="EntryDateTextBox" runat="server" Text='<%# Bind("EntryDate") %>' />
                <br />ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />ImageName:
                <asp:TextBox ID="ImageNameTextBox" runat="server" Text='<%# Bind("ImageName") %>' />
                <br />CategoryName:
                <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #DCDCDC;color: #000000;">ProductId:
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
                CategoryName:
                <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ProductId:
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
                CategoryName:
                <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Eval("CategoryName") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetProducts" TypeName="AspDotNetProject.Models.ProductGateWay">
    </asp:ObjectDataSource>
</asp:Content>
