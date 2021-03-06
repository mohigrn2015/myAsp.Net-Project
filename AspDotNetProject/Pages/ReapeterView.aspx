<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="ReapeterView.aspx.cs" Inherits="AspDotNetProject.Pages.ReapeterView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"></asp:Repeater>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Products] ([ProductName], [ShortDescription], [LongDescription], [CategoryId], [EntryDate], [ImageFile], [ImageName], [UnitPrice]) VALUES (@ProductName, @ShortDescription, @LongDescription, @CategoryId, @EntryDate, @ImageFile, @ImageName, @UnitPrice)" SelectCommand="SELECT [ProductId], [ProductName], [ShortDescription], [LongDescription], [CategoryId], [EntryDate], [ImageFile], [ImageName], [UnitPrice] FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [ShortDescription] = @ShortDescription, [LongDescription] = @LongDescription, [CategoryId] = @CategoryId, [EntryDate] = @EntryDate, [ImageFile] = @ImageFile, [ImageName] = @ImageName, [UnitPrice] = @UnitPrice WHERE [ProductId] = @ProductId">
        <DeleteParameters>
            <asp:Parameter Name="ProductId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="EntryDate" Type="DateTime" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="EntryDate" Type="DateTime" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="ImageName" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ProductId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
