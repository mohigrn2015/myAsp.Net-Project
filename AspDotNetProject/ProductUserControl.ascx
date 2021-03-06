<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductUserControl.ascx.cs" Inherits="AspDotNetProject.ProductUserControl" %>


<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 447px;
    }
    .auto-style3 {
        width: 695px;
    }
</style>


<div class="container">
    <div class="boxSizeCenter">
        
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h3 style="color: #800000; text-transform: uppercase; font-variant: small-caps; font-style: normal; font-weight: bold; font-size: 30px; font-family: Arial, Helvetica, sans-serif; border-bottom-style: outset" class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Registration Form</h3>
                    </td>
                </tr>
                <tr>
                    <td>User Name :
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtName" runat="server" Width="100%" Height="28px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="txtName" runat="server" ErrorMessage="User Name Is Required"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustxtFirstName" ControlToValidate="txtName" runat="server" ErrorMessage="Name must be capital letter" ForeColor="Red" CssClass="alert-danger"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password :
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100%" Height="28px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password :
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="100%" Height="28px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="This Field Is Required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" runat="server" ErrorMessage="Password must be same" ForeColor="#ff0000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email : 
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="100%" Height="27px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email Is Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rxvTxtEmail" ControlToValidate="txtEmail" Display="Dynamic" runat="server" ForeColor="Red" ErrorMessage="Invalid Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnRegister" runat="server" Text="Register User" OnClick="btnRegister_Click" BackColor="#009999" ForeColor="#ffffff" Height="37px" Width="140px" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    

</div>

