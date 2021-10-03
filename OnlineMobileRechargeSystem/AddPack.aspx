<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPack.aspx.cs" Inherits="OnlineMobileRechargeSystem.AddPack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add PAck</title>
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body class="container">
    
    <h1 class="h1" align="center" style="border-radius:3px;color: white; background-color:#484848">Add Pack</h1>
    
   
    <section class="vh-150" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Add Package</p>
                  <p>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" SelectCommand="SELECT [ProviderName] FROM [Providers]"></asp:SqlDataSource>
                  </p>

                <form class="mx-1 mx-md-4"  id="form1" runat="server">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
            
                        <label class="form-label" for="form3Example1c">Provider</label>
                       <asp:DropDownList class="form-control btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" ID="DropDownList1" runat="server" AutoPostBack="True" 
                           DataSourceID="SqlDataSource1" DataTextField="ProviderName" DataValueField="ProviderName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">                               
                       </asp:DropDownList>

                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                         <label class="form-label" for="form3Example3c">Type of Recharge</label>
                          <asp:DropDownList class="form-control btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"  ID="DropDownList2"  runat="server" AutoPostBack="True">
                                <asp:ListItem>Select Type</asp:ListItem>
                          </asp:DropDownList>
                    
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                         <label class="form-label" for="form3Example4c">Amount</label>
                        <asp:TextBox class="form-control"  ID="amount" runat="server"></asp:TextBox>
                      
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                        <label class="form-label" for="form3Example4c"> Validity</label>
                        <asp:TextBox class="form-control" ID="validity" runat="server"></asp:TextBox>
                     
                    </div>
                  </div>
                    <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                        <label class="form-label" for="form3Example4c"> data pack (per day data limit)</label>
                        <asp:TextBox class="form-control" ID="data" runat="server"></asp:TextBox>
                     
                    </div>
                  </div> <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                        <label class="form-label" for="form3Example4c"> SMS limits (per day)</label>
                        <asp:TextBox class="form-control" ID="smslimit" runat="server"></asp:TextBox>
                    
                     
                    </div>
                  </div> <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                        
                        <label class="form-label" for="form3Example4c"> Voice</label>
                        <asp:TextBox class="form-control" ID="voice" runat="server"></asp:TextBox>
                     
                    </div>
                  </div>
                     
           
            
                  <div class="form-check d-flex justify-content-center mb-5">
                    <asp:Button Class="btn btn-primary" ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:HyperLink class="btn btn-danger" NavigateUrl="~/AdminPage.aspx" ID="HyperLink1" runat="server">Back</asp:HyperLink>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-registration/draw1.png" class="img-fluid" alt="Sample image"/>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>
</html>
