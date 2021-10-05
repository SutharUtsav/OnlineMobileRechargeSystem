<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="packages.aspx.cs" Inherits="OnlineMobileRechargeSystem.packages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/packages.css" rel="stylesheet" />
    <title></title>
    <style>
        .active {
            border-color: #0C2D3B;
            color: #0C2D3B;
            font-weight: 600;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="upper-part">
            <div class="phonenumber">
                <asp:Label ID="upperlabel" runat="server" Text="7984518755"></asp:Label>
                <asp:Button class="changebutton" ID="Button1" runat="server" Text="Change" OnClick="Button1_Click" />
            </div>
            <div class="tab-link">
                <%foreach (var x in List_p)
                    {%>
                    <a href="packages.aspx?Id=<%=x.provider.Id %>&tid=<%=x.Id %>" class="p_plan"  > <% =x.RechargeType%></a>
                 <% }%>
            </div>
            <div class="page_wrap">
                <div class="page_ctn open">
                    <div class="page_table">
                         <%foreach (var x in List_r)
                            {%>
                        <div class="table_plans tab_adj discription">
                            <div class="plans_ctn_table">
                                <div class="tab price_wr">
                                    <span class="price">
                                        <sup>
                                            <i class="fa fa-inr">
                                            </i>
                                        </sup>
                                       <% =x.Amount %>
                                    </span>
                                </div>
                                <div class="tab btn">
                                    <a href="summary.aspx?Id=<%=x.Id %>" class="button" >Buy Now</a>
                                </div>
                                <div class="tab dis">
                                    <span>
                                        Get <% =x.Voice %> Voice Calls + <% =x.Datapack %> Data + <% =x.SMSLimit %> SMS
                                        <br />
                                        <b>Validity: <% =x.validity %></b>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" SelectCommand="SELECT * FROM [TypeofRecharges]"></asp:SqlDataSource>
</body>
   <script>
      
   </script>
</html>
