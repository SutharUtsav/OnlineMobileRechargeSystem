<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="OnlineMobileRechargeSystem.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
         <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/packages.css" rel="stylesheet" />
    <title>History</title>
</head>
<body class="container">
    <form id="form1" runat="server">
        <div style="border-radius:4px" class="bg-dark text-light text-center mt-5 ">
            <h1>History
                
                <asp:HyperLink ID="Back"  runat="server" NavigateUrl="~/Home.aspx" CssClass=" my-1 mx-3 btn btn-primary float-end" Text="Back" />
            </h1>
        </div>
        <div class="upper-part">
             <div class="page_wrap">
                <div class="page_ctn open">
                    <div class="page_table">
                         <%foreach (var x in List_h)
                            {%>
                        <div class="table_plans tab_adj discription">
                            <div class="plans_ctn_table">
                                <div class="tab price_wr">
                                    <span class="price">
                                       ₹<%=x.Recharge.Amount %>
                                       
                                    </span>
                                </div>
                                <div class="tab btn">
                                    <span class="button text-md-center"><%=x.user.Username %></span>
                                </div>
                                <div class="tab dis">
                                    <span style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                                        Mobile Number : <%=x.Phonenumber %>
                                    </span>
                                    <br />
                                    <span >
                                       Activated date :
                                       <%=x.startdate.ToString("dddd, dd MMMM yyyy hh:mm tt")%>
                                        <br />
                                        Expire date : <% =x.enddate.ToString("dddd, dd MMMM yyyy hh:mm tt")%> 
                                        <br />
                                        Provider :
                                        <%=x.Recharge.Provider.ProviderName%>-
                                        <% =x.Recharge.Type.RechargeType %> 
                                    </span>
                                </div>
                            </div>
                        </div>
                        <% }%>
                       
                    </div>
                </div>
            </div>
        </div>
        </form>
    
</body>
</html>
