<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site_Master_Page.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="AspDotNetProject.Registration_Auth.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 3px;
        }
        .auto-style3 {
            width: 451px;
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">    
            
                <div class="boxSizeCenter">
                    <table class="auto-style1">
                    <tr>
                        <td class="auto-style1">
                            <h3 style="font-family: Arial, Helvetica, sans-serif; color: #800000; text-transform: uppercase; font-variant: small-caps; font-weight: bold; font-size: 30px; border-bottom-style: outset;">Login</h3>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style1">
                           
                            <br />
                           
                        </td>
                        
                    </tr>
                     <tr>
                       
                        <td class="auto-style1">
                            User Name :
                            <asp:TextBox ID="txtUserName" runat="server" Height="27px" Width="312px" ></asp:TextBox><br />
                        </td>
                    </tr>
                        
                     <tr>
                        <td class="auto-style1">
                            
                            <br />
                            
                        </td>
                       
                    </tr>
                    <tr>
                         <td class="auto-style3">
                             &nbsp;
                             Password :
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="auto-style2" Height="30px" Width="321px" ></asp:TextBox>
                             <br />
                             <br />
                        </td>
                    </tr>
                     <tr>
                      
                        <td class="auto-style1">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#009999" ForeColor="white" OnClick="btnLogin_Click" Width="152px" Height="37px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                </div>
                
                <br />
                <a href="RegistrationForm.aspx"> Click here to Register</a>
                If you do not have an account, Please, Register First.
            </div>

        
</asp:Content>
