<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="OnlineMobileRechargeSystem.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AdminPage</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            --bs-table-bg: transparent;
            --bs-table-accent-bg: transparent;
            --bs-table-striped-color: #212529;
            --bs-table-striped-bg: rgba(0, 0, 0, 0.05);
            --bs-table-active-color: #212529;
            --bs-table-active-bg: rgba(0, 0, 0, 0.1);
            --bs-table-hover-color: #212529;
            --bs-table-hover-bg: rgba(0, 0, 0, 0.075);
            margin-bottom: 1rem;
            color: #212529;
            vertical-align: top;
            border-color: #dee2e6;
        }
    </style>
</head>
<body class="container">
     <h1 class="h1 bg-dark text-light rounded" align="center"  >Admin Page</h1>
    <hr style="border:5px solid black"/>
    <form id="form1" runat="server">
         <div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="card">
                        <div class="row">
                            <div class="col-md-6">
                                <h3 class="card-header text-white bg-dark">Admin Page
                                    <asp:Button ID="ButtonLogout" CssClass="float-end btn btn-danger text-light " runat="server" Text="Logout" OnClick="ButtonLogout_Click" />

                                </h3>
                                <div class="card-body">
                                        <label class="form-control bg-info text-black ">Manage From Here</label>
                                        <br />
                                        <label class="col-md-5 col-form-label-lg">Manage Provider :</label>
                                        <asp:HyperLink class="col-md-5 btn btn-dark" ID="HyperLink1" runat="server" NavigateUrl="~/AddProvider.aspx">Manage</asp:HyperLink>
                                        <br />
                                        <label class="col-md-5 col-form-label-lg">Add New Packages :</label>
                                         <asp:HyperLink class="col-md-5 btn btn-dark" ID="HyperLink2" runat="server" NavigateUrl="~/AddPack.aspx">
                                             Pack</asp:HyperLink>
                                    </div>
                                    <div class="card-footer">
                                        <label class="form-control table bg-info text-black">To see recharge List select following details</label>
                                        <br />
                                        <label class="col-md-5 col-form-label-lg">Provider</label>
                                        <asp:DropDownList  class="col-md-5 btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"  
                                            ID="Providerlist" runat="server" AutoPostBack="True"  DataSourceID="SqlDataSource1" DataTextField="ProviderName" DataValueField="Id">
                                          </asp:DropDownList>
                                        
                                         <label class="col-md-5 col-form-label-lg">Type of Recharge</label>
                                         <asp:DropDownList  class="col-md-5 btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" ID="typelist" runat="server" AutoPostBack="True"  DataSourceID="SqlDataSource2" DataTextField="RechargeType" DataValueField="Id">
                                         </asp:DropDownList>
                                    </div>
                                </div>
                            <div class="col-md-6 text-right">
                                <img src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-registration/draw1.png" class="img-fluid" alt="Sample image" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr style="border:5px solid black"/>
         <asp:GridView CssClass="auto-style1"  ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px"   Style="max-height:fit-content;width:100%;"  CellPadding="3" 
             AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="No">
                    <ItemTemplate>
                        <%i += 1;%>
                        <%=i%>
                    </ItemTemplate>
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="validity" HeaderText="validity(In Day)" SortExpression="validity" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Datapack" HeaderText="Datapack(per Day)" SortExpression="Datapack" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="SMSLimit" HeaderText="SMSLimit(per Day)" SortExpression="SMSLimit" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Voice" HeaderText="Voice (per Day)" SortExpression="Voice" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField   DataField="Provider_Id" HeaderText="Provider Link" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField  DataField="Type_Id" HeaderText="Type Link" >
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                 </asp:BoundField>
                <asp:CommandField HeaderText="Edit" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-success m-2"></ControlStyle>
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:CommandField>
                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" >
                    <ControlStyle CssClass="btn btn-danger"></ControlStyle>
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:CommandField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle HorizontalAlign="Center" BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" SelectCommand="SELECT * FROM [Providers]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" SelectCommand="SELECT * FROM [TypeofRecharges] WHERE ([provider_Id] = @provider_Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Providerlist" DefaultValue="1" Name="provider_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" DeleteCommand="DELETE FROM [RechargeLists] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RechargeLists] ([Amount], [validity], [Datapack], [SMSLimit], [Voice], [Provider_Id], [Type_Id]) VALUES (@Amount, @validity, @Datapack, @SMSLimit, @Voice, @Provider_Id, @Type_Id)" SelectCommand="SELECT * FROM [RechargeLists] WHERE (([Provider_Id] = @Provider_Id) AND ([Type_Id] = @Type_Id))" UpdateCommand="UPDATE [RechargeLists] SET [Amount] = @Amount, [validity] = @validity, [Datapack] = @Datapack, [SMSLimit] = @SMSLimit, [Voice] = @Voice, [Provider_Id] = @Provider_Id, [Type_Id] = @Type_Id WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="validity" Type="String" />
                <asp:Parameter Name="Datapack" Type="String" />
                <asp:Parameter Name="SMSLimit" Type="String" />
                <asp:Parameter Name="Voice" Type="String" />
                <asp:Parameter Name="Provider_Id" Type="Int32" />
                <asp:Parameter Name="Type_Id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Providerlist" DefaultValue="" Name="Provider_Id" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="typelist" Name="Type_Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Amount" Type="Int32" />
                <asp:Parameter Name="validity" Type="String" />
                <asp:Parameter Name="Datapack" Type="String" />
                <asp:Parameter Name="SMSLimit" Type="String" />
                <asp:Parameter Name="Voice" Type="String" />
                <asp:Parameter Name="Provider_Id" Type="Int32" />
                <asp:Parameter Name="Type_Id" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
    
</body>
</html>
