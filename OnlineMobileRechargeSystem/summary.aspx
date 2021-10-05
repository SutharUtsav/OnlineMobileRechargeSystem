<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summary.aspx.cs" Inherits="OnlineMobileRechargeSystem.summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/summary.css" rel="stylesheet" />
    <title></title>
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="head1 card-header" align="center">
                Summary
            </div>
            <div class="amount card-header" align="center">
                Amount: <%=r.Amount %> ₹
            </div>
            <div class="middle">
                <div class="card ">
                    <div class="card-body" style="background-color:papayawhip">
                        <b class="card-title">Voice call limit: </b>
                        <p > <%=r.Voice %> minutes </p>
                        <br />
                        <br />
                        <b class="card-title">Data limit: </b>
                        <p class="card-text"> <%=r.Datapack %> Data </p>
                        <br />
                        <br />
                        <b class="card-title">SMS limit: </b>
                        <p class="card-text"> <%=r.SMSLimit %> per Day </p>
                        <br />
                        <br />
                        <b class="card-title">Validity: </b>
                        <p class="card-text"> <%=r.validity %> Days </p>
                        <br />
                        <br />
                        <b class="card-title">Start Date: </b>
                        <p class="card-text"> <%=start %>  </p>
                        <br />
                        <br />
                        <b class="card-title">End date: </b>
                        <p class="card-text"> <%=end %>  </p>
                        <br />
                        <br />
                    </div>
                    
                </div>
                <div class="text-center but1">
                       <asp:Button ID="Button1"  runat="server" Text="Buy" class="btn btn-primary but1 px-3" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
