<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProvider.aspx.cs" Inherits="OnlineMobileRechargeSystem.AddProvider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Provider</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body class="container" style="background-color: #eee;">
    <h1 class="h1" align="center" style="color: white; background-color: #000000">Provider Details Page</h1>

    <form id="form1" runat="server">
        <div>
            <div class="page-content page-container" id="page-content">
                <div class="padding">
                    <div class="card">
                        <div class="row">
                            <div class="col-md-6">

                                <h3 class="card-header text-white bg-dark">Add Provider</h3>
                                <div class="card-body">
                                    <label class="col-form-label-lg">Name Of Provider :</label>
                                    <asp:TextBox CssClass="form-control" class="form-input padding" ID="providername" runat="server"></asp:TextBox>
                                    <asp:Label CssClass="alert alert-danger form-control" ID="Label1" ForeColor="red" runat="server"></asp:Label>
                                    <div class="form-check-inline mt-4">
                                        <asp:HyperLink CssClass="btn btn-info" Style="margin-left: 15px" NavigateUrl="~/AdminPage.aspx" ID="HyperLink1" runat="server">Back</asp:HyperLink>
                                        <asp:Button Class="btn btn-dark" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                    </div>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineMobileRechargeSystem %>" DeleteCommand="DELETE FROM [Providers] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Providers] ([ProviderName]) VALUES (@ProviderName)" SelectCommand="SELECT * FROM [Providers]" UpdateCommand="UPDATE [Providers] SET [ProviderName] = @ProviderName WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProviderName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProviderName" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView CssClass="table" ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="Id" DataSourceID="SqlDataSource1"  Style="max-height:fit-content;max-width: 1305px;" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="No">
                    <ItemTemplate>
                        <%i += 1; %>
                        <%=i %>
                    </ItemTemplate>
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                <asp:BoundField DataField="ProviderName" HeaderText="ProviderName" SortExpression="ProviderName">
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                <asp:CommandField HeaderText="Edit" ControlStyle-CssClass="btn btn-success" ShowEditButton="True">
                    <ControlStyle CssClass="btn btn-success"></ControlStyle>
                    <ItemStyle BorderWidth="2px" BorderStyle="Groove" BorderColor="Black" HorizontalAlign="Center"></ItemStyle>
                </asp:CommandField>
                <asp:CommandField HeaderText="Delete"  ShowDeleteButton="True">
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
        <br />
        <hr style="border: 5px solid black" />
    </form>

</body>
</html>
