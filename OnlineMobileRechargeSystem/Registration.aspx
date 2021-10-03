<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineMobileRechargeSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style2 {
            height: 53px;
            text-align: left;
            }
        .auto-style7 {
            height: 72px;
        }
        .auto-style8 {
            
            margin-right: 69px;
            height: 379px;
            width:495px;
        }
        .auto-style10 {
            height: 40px;
            }
        .auto-style17 {
            height: 54px;
            text-align: left;
            }
        .auto-style20 {
            height: 56px;
            text-align: left;
            }
        .auto-style32 {
            height: 55px;
            text-align: left;
        }
        .auto-style33 {
            height: 56px;
        }
    </style>
    
</head>
<body style="background-color:#68198769;">
   <div class="container py-5 h-100" >
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5 w-110">
            <h3 class="text-center">Registration Form</h3>
             
                  <form id="form1" runat="server" class="mx-1 mx-md-4">
                    <table class="auto-style8">

                    <!-- Username-->
                    <tr>
                        <td class="auto-style20"><strong>Username:</strong><asp:TextBox ID="UsernameTextBox" placeholder="Enter Username" runat="server" class="form-control "></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameTextBox" ErrorMessage="* (User name is required)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <!-- Email-->
                    <tr>
                        <td class="auto-style17"><strong>Email:</strong><asp:TextBox ID="EmailTextBox" runat="server" placeholder="Enter Email Address" TextMode="Email" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="* (Email is required)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="You must enter the valid email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>

                    <!--Phone num-->
                    <tr>
                        <td class="auto-style2"><strong>Phone Number:</strong><asp:TextBox ID="PhoneNumTextBox" placeholder="Enter 10-digit Phone Number" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PhoneNumTextBox" ErrorMessage="* (Phone Number is required)" ForeColor="Red" Width="250px" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PhoneNumTextBox" ErrorMessage="You must enter valid 10 digit phone number" ForeColor="Red" ValidationExpression="\d{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>

                    <!--Password-->
                    <tr>
                        <td class="auto-style32"><strong>Password:</strong><asp:TextBox ID="PasswordTextBox" placeholder="Enter Password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="* (Password is required)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <!--Confirm Password-->
                    <tr>
                        <td class="auto-style33"><strong>Confirm Password:<asp:TextBox ID="ConfirmPasswordTextBox" placeholder="Re-enter Password" runat="server" class="form-control " TextMode="Password"></asp:TextBox>
                            </strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPasswordTextBox" ErrorMessage="* (Confirm Password is required)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                               
                            <br />
                               
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ErrorMessage="Both passwords must be same" ForeColor="Red" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                        <asp:Button class="btn btn-primary btn-lg" ID="Submit_Button" runat="server" OnClick="Submit_Button_Click" Text="Register" />
&nbsp;&nbsp;
                        <input class="btn btn-primary btn-lg" id="Reset_button" type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="AccountExistLabel" runat="server" Text="Already Have an Account"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/Login.aspx">Click here</asp:HyperLink>
                            <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="EmailExistLabel" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    </table>
        
                   </form>   
                
                  </div>
                </div>
              </div>
            </div>
          </div>
    
</body>
</html>
