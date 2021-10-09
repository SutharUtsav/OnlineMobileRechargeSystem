<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineMobileRechargeSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            text-align: center;
            height: 37px;
        }
        .auto-style14 {
            height: 51px;
        }
        .auto-style18 {
            height: 44px;
            text-align: center;
        }
        .auto-style22 {
            text-align: left;
            height: 54px;
        }
        .auto-style23 {
            text-align: left;
            height: 53px;
        }
    </style>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <section class="vh-100" style="background-color: #508bfc;">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1rem; left: 0px; top: 0px; width: 463px; margin-right: 0px;">
                    <div class="card-body p-5 text-center">

                        <h3 class="mb-5">Sign in</h3>
                        <form id="form1" runat="server">
        
                        <table class="auto-style1">
                
                         <!--Email Input-->
                        <div class="form-outline mb-4">
                        <tr class="p-5">
                            <td class="auto-style23"><strong>Email:</strong><asp:TextBox ID="EmailTextBox" class="form-control input-group-lg" placeholder="Enter Email Address"  runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        </div>

                        <!--Password Input-->
                        <div class="form-outline mb-4">
                        <tr>
                            <td class="auto-style22"><strong>Password:</strong><div class="text-center">
                            <asp:TextBox ID="PasswordTextBox" class="form-control input-group-lg"  runat="server"  placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                            &nbsp;</td>
                        </tr>   
                        </div>
                        <tr>
                            <td class="auto-style14"><asp:Button ID="SignInButton" class="btn btn-primary btn-lg btn-block" runat="server" Text="SIGN IN" Height="46px" Width="202px" OnClick="SignInButton_Click" />
                            </td>
                        </tr>   
                        <tr>
                            <td class="auto-style6">
                                <br />
                                <br />
                            <asp:Label ID="Label1" runat="server" Text="Don't Have an Account"></asp:Label>
                            &nbsp;
                            <asp:HyperLink ID="HyperLinkRegister" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx">Click Here</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="InvalidErrorLabel" runat="server"></asp:Label>
                                <br />
                            </td>
                        </tr>
                            <tr>
                            <td class="auto-style18">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email Address is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            </tr>
                        <tr>
                            <td class="auto-style6">
                            </td>
                        </tr>
                        </table>

                        </form>
                    </div>
                </div>
            </div>
        </div>
     </div>
    </section>
</body>
</html>
