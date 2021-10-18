<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OnlineMobileRechargeSystem.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Home</title>
    <%--<link href="Content/bootstrap.min.css" rel="stylesheet" />--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
      <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            height: 25px;
        }
        .auto-style3 {
            width: 190px;
        }
        .bg-button{
            background-color:inherit;
        }
        .gradient{
            background-image: linear-gradient(pink, skyblue);
        }
    </style>
</head>
<body style="background-color: #00b3b3">

    <form id="form1" runat="server">
     
        <div style="text-align: center" class="p-2 m-2">
            <asp:Label ID="Label" runat="server" CssClass="alert alert-danger p-2 m-2"> * You Can Not Access This Page</asp:Label>
        </div>


        <div class="container py-5 h-100" >
           <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-lg-9 col-xl-7">
                    <div class="card shadow-2-strong card-registration bg-info gradient" style="border-radius: 15px;">
                        <div class="card-body p-4 p-md-5 w-110">
                            

                                <asp:Panel ID="Panel1" runat="server" CssClass="alert alert-success alert-dismissible">
                                    Your Recharge is Successfully Done
                                    <asp:Button ID="ButtonCloseAlert"  class="btn-close" data-dismiss="alert" aria-hidden="true" runat="server" CausesValidation="false" OnClick="ButtonCloseAlert_Click" />
                                </asp:Panel>
  
                                <h3>Mobile Recharge
                                    
                                         <asp:Button ID="ButtonLogout" CssClass="float-end btn btn-primary text-light " runat="server" Text="Logout" CausesValidation="false" OnClick="ButtonLogout_Click" />
                                    
                                </h3>

                                <table class="w-100">
                                    <tr>
                                        <td><strong>Number:<asp:RequiredFieldValidator ID="RequiredFieldValidatorNumber" runat="server" ControlToValidate="TextBoxNumber" Display="Dynamic" ErrorMessage="* Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </strong>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxNumber" ErrorMessage="Enter valid 10 digit phone number" ForeColor="Red" ValidationExpression="\d{10}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="TextBoxNumber" class="form-control" runat="server" placeholder="Enter Valid Number" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1"><strong>Operator:<asp:RequiredFieldValidator ID="RequiredFieldValidatorOperator" runat="server" ControlToValidate="DropDownListProvider" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="DropDownListProvider" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="ProviderName" DataValueField="Id">
                                                <asp:ListItem Value="Select Opeartor">Select Opeartor</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>Circle:<asp:RequiredFieldValidator ID="RequiredFieldValidatorCircle" runat="server" ControlToValidate="DropDownListCircle" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                            <asp:DropDownList ID="DropDownListCircle" class="form-control" runat="server">
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" SelectCommand="SELECT * FROM [Providers]" ProviderName="<%$ ConnectionStrings:OnlineMobileRechargeSystem.ProviderName %>"></asp:SqlDataSource>
                            
                        </div>
                     </div>
                    <br />
                </div>
               </div>
           </div>

        
        <div id="activePlan" class="py-5 bg-info bg-opacity-25 container h-100" runat="server">
            <div class="card text-center table-secondary">
                <div class="card-header" style="background-color:#f66f6f">
                    <h3 class="py-2" style="color:white">Your Active Plans
                        <asp:HyperLink runat="server" NavigateUrl="~/History.aspx" CssClass="btn btn-dark float-end">History</asp:HyperLink>
                    </h3>
                </div>
                <div class="card card-body">
                    <table class="w-100 table table-secondary">
                    <tr>
                        <td class="auto-style3">Provider:</td>
                        <td>
                            <asp:Label ID="LabelProvider" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Amount:</td>
                        <td>
                            <asp:Label ID="LabelAmount" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Validity:</td>
                        <td>
                            <asp:Label ID="LabelValidity" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Datapack:</td>
                        <td>
                            <asp:Label ID="LabelDatapack" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">SMS limit:</td>
                        <td>
                            <asp:Label ID="LabelSMSlimit" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                
                </div>
                <div class="mt-0 card-footer text-muted">
                    <asp:Label ID="LabelEndDate" runat="server"></asp:Label>
                </div>
            </div>
            </div>
        
        </form>

		<script type="text/javascript" >
            var style = document.getElementById("Label").offsetLeft;
            if (style >= 0) {
                setTimeout(function () {
                    document.getElementById("Label").style.display = 'none';
                }, 3000);

            }
            

        </script>
 

    </body>
</html>
