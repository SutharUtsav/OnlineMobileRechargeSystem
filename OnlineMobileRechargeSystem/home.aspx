<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineMobileRechargeSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            height: 25px;
        }
    </style>
</head>
<body>
    
       <div class="container py-5 h-100" >
           <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5 w-110">
                            <h3 class="text-center">Mobile Recharge</h3>
                            <form id="form1" runat="server">

                                <table class="w-100">
                                    <tr>
                                        <td><strong>Number:<asp:RequiredFieldValidator ID="RequiredFieldValidatorNumber" runat="server" ControlToValidate="TextBoxNumber" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBoxNumber" class="form-control" runat="server" placeholder="Enter Valid Number"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Operator:<asp:RequiredFieldValidator ID="RequiredFieldValidatorOperator" runat="server" ControlToValidate="DropDownListProvider" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="DropDownListProvider" class="form-control" runat="server">
                                                <asp:ListItem Value="Select Provider">Select Provider</asp:ListItem>
                                                <asp:ListItem>JIO</asp:ListItem>
                                                <asp:ListItem>Vodafone Idea Vi</asp:ListItem>
                                                <asp:ListItem>Airtel</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Circle:<asp:RequiredFieldValidator ID="RequiredFieldValidatorCircle" runat="server" ControlToValidate="DropDownListCircle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:DropDownList ID="DropDownListCircle" class="form-control" runat="server">
                                                <asp:ListItem>Select Circle</asp:ListItem>
                                                <asp:ListItem>Delhi NCR</asp:ListItem>
                                                <asp:ListItem>Asam</asp:ListItem>
                                                <asp:ListItem>Bihar</asp:ListItem>
                                                <asp:ListItem>Chennai</asp:ListItem>
                                                <asp:ListItem>Gujarat</asp:ListItem>
                                                <asp:ListItem>Haryana</asp:ListItem>
                                                <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                                                <asp:ListItem>Karnataka</asp:ListItem>
                                                <asp:ListItem>Kerala</asp:ListItem>
                                                <asp:ListItem>Kolkata</asp:ListItem>
                                                <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                                <asp:ListItem>Maharashtra</asp:ListItem>
                                                <asp:ListItem>Mumbai</asp:ListItem>
                                                <asp:ListItem>North East</asp:ListItem>
                                                <asp:ListItem>Orissa</asp:ListItem>
                                                <asp:ListItem>Punjab</asp:ListItem>
                                                <asp:ListItem>Rajasthan</asp:ListItem>
                                                <asp:ListItem>Tamil Nadu</asp:ListItem>
                                                <asp:ListItem>UP East</asp:ListItem>
                                                <asp:ListItem>UP West</asp:ListItem>
                                                <asp:ListItem>West Bengal</asp:ListItem>
                                                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="ButtonProceed" CssClass="form-control btn btn-secondary" runat="server" Text="Proceed" OnClick="ButtonProceed_Click" />
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
