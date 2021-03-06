<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="SQLDataSource.aspx.cs" Inherits="AspDotNetProject.Pages.SQLDataSource" EnableEventValidation="false" %>

<%@ Register Src="~/UserControl.ascx" TagPrefix="uc1" TagName="UserControl" %>


<%--<%@ Register Src="~/UserControl.ascx" TagPrefix="uc1" TagName="UserControl" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 1422px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="boxSizeCenter">
        <br />
         <br />
        <table class="auto-style15"> 
        <tr>
            <td class="auto-style14" colspan="2" style="color: #800000; font-size: 30px; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-style: normal; font-variant: small-caps; text-transform: uppercase; border-bottom-style: outset; border-width: 0px 0px medium medium">Product Information SQL Data Source
            </td>
        </tr>
    </table>
    </div>
    <uc1:UserControl runat="server" ID="UserControl" />
    

    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="ProductId" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="ProductId" InsertVisible="False" SortExpression="ProductId">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ShortDescription" SortExpression="ShortDescription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LongDescription" SortExpression="LongDescription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("LongDescription") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EntryDate" SortExpression="EntryDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EntryDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("EntryDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageFile" SortExpression="ImageFile">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server"  Height="75" Width="70" ImageUrl='<%# Eval("ImageFile") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductId] = @ProductId" InsertCommand="INSERT INTO [Products] ([ProductName], [ShortDescription], [LongDescription], [CategoryId], [EntryDate], [ImageFile], [ImageName], [UnitPrice]) VALUES (@ProductName, @ShortDescription, @LongDescription, @CategoryId, @EntryDate, @ImageFile, @ImageName, @UnitPrice)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [ShortDescription] = @ShortDescription, [LongDescription] = @LongDescription, [CategoryId] = @CategoryId, [EntryDate] = @EntryDate, [ImageFile] = @ImageFile, [ImageName] = @ImageName, [UnitPrice] = @UnitPrice WHERE [ProductId] = @ProductId">
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
    </div>
    
</asp:Content>
