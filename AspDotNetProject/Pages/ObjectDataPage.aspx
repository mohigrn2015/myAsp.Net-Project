<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master2_Page.Master" AutoEventWireup="true" CodeBehind="ObjectDataPage.aspx.cs" Inherits="AspDotNetProject.Pages.ObjectDataPage" EnableEventValidation="false" %>

<%@ Register Src="~/UserControl.ascx" TagPrefix="uc1" TagName="UserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-weight: bold;
            text-align: center;
            color: violet;
            font-size: 30px;
            width: 1475px;
        }
        .auto-style15 {
            width: 1419px;
            min-width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="boxSizeCenter">
        <br />
        <table class="auto-style15"> 
        <tr>
            <td class="auto-style14" colspan="2" style="color: #800000; font-size: 30px; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-style: normal; font-variant: small-caps; text-transform: uppercase; border-bottom-style: outset; border-width: 0px 0px medium medium">Product Information Object Data Source
            </td>
        </tr>

    </table>
    </div>

    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server"></asp:ScriptManagerProxy>

    <uc1:UserControl runat="server" ID="UserControl" />
    <br />
    <br />
    <div>
        <h3 style="color: #800000; text-transform: uppercase; font-variant: small-caps; font-style: normal; font-weight: bold; font-size: 25px; font-family: Arial, Helvetica, sans-serif; border-bottom-style: outset">Product Information In Grid View</h3>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="ProductId" SortExpression="ProductId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ShortDescription" SortExpression="ShortDescription">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ShortDescription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LongDescription" SortExpression="LongDescription">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("LongDescription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField HeaderText="CategoryName" SortExpression="CategoryName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CategoryName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CategoryName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="EntryDate" SortExpression="EntryDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EntryDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("EntryDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageFile" SortExpression="ImageFile">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <%--<asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ImageFile") %>'></asp:TextBox>--%>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="70" Height="75" ImageUrl='<%# Eval("ImageFile") %>' />
                    <%-- <asp:Label ID="Label7" runat="server" Text='<%# Bind("ImageFile") %>'></asp:Label>--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ImageName" SortExpression="ImageName">
                <EditItemTemplate>

                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ImageName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>

                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("ImageName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UnitPrice" SortExpression="UnitPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
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
            <asp:Parameter Name="CategoryId" Type="Int32" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="ImageName" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>




    <div>
        <a href="DataListView.aspx">Data List View</a><br />
        <a href="DetailsView.aspx">Details View</a><br />
        <a href="ListView.aspx"> List View</a>
        
    </div>
</asp:Content>
