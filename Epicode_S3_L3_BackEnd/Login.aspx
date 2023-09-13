<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epicode_S3_L3_BackEnd.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Body.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" class="d-flex flex-column align-items-center" runat="server">
        <h1 class="mb-3 mt-3">Epicode Pizzeria Login</h1>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/imgs/pizza.png" Width="200px" CssClass="mb-3" />
        <div class="w-25">
            <div class="row mb-3 d-flex justify-content-center">
                <label for="inputUsername" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="inputUsername" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ControlToValidate="inputUsername"
                        runat="server"
                        ForeColor="Red"
                        ErrorMessage="Email obbligatoria">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-3">
                <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="inputPassword" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        ControlToValidate="inputPassword"
                        ForeColor="Red"
                        runat="server"
                        ErrorMessage="Password obbligatoria">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button ID="Button1" class="btn btn-primary mb-3" runat="server" Text="Login" OnClick="Button1_Click" />
            </div>
            <asp:ValidationSummary ID="ValidationSummary1" CssClass="alert alert-danger" runat="server" />
        </div>
        <asp:Label ID="errore" Visible="false" ForeColor="Red" Font-Bold="true" runat="server" Text="I dati inseriti non sono corretti, riprova"></asp:Label>
    </form>
</body>
</html>
