<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl.ascx.cs" Inherits="AspDotNetProject.UserControl" %>
<style type="text/css">
    .auto-style1 {
        width: 180px;
        min-width: 150px;
    }

    .tt {
        color: brown;
        width: 100%;
    }

    .textBoxes {
        /*background-color:antiquewhite;*/
    }

    .labelColor {
        /* background-color:antiquewhite;*/
        font-weight: bold;
    }

    .tableColor {
        /*background-color:cadetblue;*/
    }

    .headStyle {
        font-weight: bold;
        text-align: center;
        color: violet;
        font-size: 30px;
    }

    .auto-style2 {
        width: 1175px;
    }

    .auto-style3 {
        color: brown;
    }

    .auto-style6 {
        color: brown;
        margin-top: 9px;
    }

    .auto-style7 {
        color: brown;
        margin-top: 7px;
    }

    .auto-style8 {
        color: brown;
        margin-top: 10px;
    }

    .auto-style9 {
        width: 842px;
    }

    .auto-style12 {
        width: 180px;
    }

    .auto-style13 {
        width: 100%;
    }
</style>
<div id="areaContainer">
    <div class="container">


        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                <b>Loading...</b>
            </ProgressTemplate>
        </asp:UpdateProgress>


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style12">Product Name : </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtProductName" runat="server" CssClass="auto-style3" Width="462px" Height="29px"></asp:TextBox>
                        </td>
                        <td>

                        </td>

                    </tr>

                    <tr>
                        <td class="auto-style12">Short Description :</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtShortDescription" runat="server" CssClass="auto-style7" Width="461px" Height="31px"></asp:TextBox>
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Long Description :</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtLongDescription" runat="server" CssClass="auto-style6" Width="464px" Height="31px"></asp:TextBox>
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Entry Date :</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtDate" runat="server" CssClass="auto-style7" Width="459px" Height="29px"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="23px" ImageUrl="~/Images/img.png" Width="21px" OnClick="ImageButton1_Click" />
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style12">Category Name :</td>
                        <td class="auto-style9">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="39px" Width="128px" AutoPostBack="True" DataTextField="CategoryName" DataValueField="CategoryId" CssClass="auto-style6" DataSourceID="SqlDataSource1">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Product %>" SelectCommand="SELECT * FROM [Category]" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([CategoryName]) VALUES (@CategoryName)" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [CategoryId] = @CategoryId">
                                <DeleteParameters>
                                    <asp:Parameter Name="CategoryId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="CategoryName" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="CategoryName" Type="String" />
                                    <asp:Parameter Name="CategoryId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">Unit Price :</td>
                        <td class="auto-style9">
                            <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="auto-style8" Height="31px" Width="251px"></asp:TextBox>
                        </td>
                        <td>

                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style12">Image :</td>
                        <td class="auto-style9">
                            <asp:Image ID="Image1" runat="server" Height="70" Width="70" class="img" CssClass="tt" />
                            <br />
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
                            <asp:Button ID="btnView" runat="server" Text="View Image" OnClick="btnView_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"></td>
                        <td class="auto-style9">
                            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="tt" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                        <td class="auto-style9">
                            <asp:Button ID="btnSave" runat="server" Text="Save" Width="190px" Height="40px" BackColor="#009999" ForeColor="#ffffff" Font-Bold="true" OnClick="btnSave_Click" />
                        </td>
                    </tr>

                </table>
                <form>
                    <table>
                        <tr>
                            <td style="font-family: Arial, Helvetica, sans-serif; font-size: 25px; font-weight: bold; font-style: normal; font-variant: small-caps; text-transform: uppercase; color: #800000; border-bottom-style: outset">Category Information</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CategoryId" DataSourceID="SqlDataSource1" GridLines="Both" Width="316px">
                                    <EditItemTemplate>
                                        CategoryId:
                                <asp:Label ID="CategoryIdLabel1" runat="server" Text='<%# Eval("CategoryId") %>' />
                                        <br />
                                        CategoryName:
                                <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="black" />
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="black" />
                                    <InsertItemTemplate>
                                        CategoryName:
                                <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table class="auto-style13">
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <table class="auto-style13">
                                            <tr>
                                                <td>CategoryName:</td>
                                                <td>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                                    </ItemTemplate>
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                </asp:FormView>
                            </td>
                        </tr>
                    </table>
                </form>

            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger  ControlID="btnView"/>
            </Triggers>
        </asp:UpdatePanel>

       

        <asp:HiddenField ID="HiddenFieldImageName" runat="server" />
        <asp:HiddenField ID="HiddenFieldImageFile" runat="server" />


    </div>

</div>




