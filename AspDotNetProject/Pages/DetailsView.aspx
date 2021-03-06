<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="DetailsView.aspx.cs" Inherits="AspDotNetProject.Pages.DetailsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="273px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="ProductId" SortExpression="ProductId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductId") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ShortDescription" SortExpression="ShortDescription">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LongDescription" SortExpression="LongDescription">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EntryDate" SortExpression="EntryDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EntryDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EntryDate") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("EntryDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageFile" SortExpression="ImageFile">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("ImageFile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
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
