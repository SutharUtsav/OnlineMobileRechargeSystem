<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summary.aspx.cs" Inherits="OnlineMobileRechargeSystem.summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/summary.css" rel="stylesheet" />
    <title>Summary</title>
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="ButtonLogout" CssClass="float-end btn text-white" runat="server" Text="Logout" OnClick="ButtonLogout_Click" />
        <div>
            <div class="head1 card-header bg-primary" align="center">
                Summary
           
            </div>

            <div class="middle">
                <div class="card ">
                    <div class="card-header bg-dark text-light">
                        <div >
                            Recharge For Number :<b> <%=user.PhoneNum%></b>
                        </div>
                    </div>
                    <div class="card-body" style="background-color: papayawhip">
                        <b class="card-title">Data limit: </b>
                        <p class="card-text"><%=r.Datapack %> Data </p>
                        <br />
                        <br />
                        <b class="card-title">Voice call limit: </b>
                        <p><%=r.Voice %> minutes </p>
                        <br />
                        <br />
                        <b class="card-title">SMS limit: </b>
                        <p class="card-text"><%=r.SMSLimit %> per Day </p>
                        <br />
                        <br />
                        <b class="card-title">Validity: </b>
                        <p class="card-text"><%=r.validity %> Days </p>
                        <br />
                        <br />
                        <b class="card-title">Activated On: </b>
                        <p class="card-text"><%=start.ToString("dddd, dd MMMM yyyy hh:mm tt")%>  </p>
                        <br />
                        <br />
                        <b class="card-title">Expired On: </b>
                        <p class="card-text"><%=end.ToString("dddd, dd MMMM yyyy hh:mm tt") %>  </p>
                        <br />
                        <br />
                        <div class="card-header bg-success text-light" align="center">
                            Amount: <%=r.Amount %> ₹
           
                        </div>
                    </div>
                    <div class="card-footer text-center btn1">
                    <asp:Button ID="Button1" runat="server" Text="Buy" class="btn btn-primary but1 px-3" OnClick="Button1_Click" />
                    <a  runat="server"  onclick="history.go(-1); return false;" class="btn btn-primary but1 px-3"  >Back</a>
                        
                </div>

                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
