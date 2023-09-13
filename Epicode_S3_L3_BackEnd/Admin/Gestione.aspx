<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gestione.aspx.cs" Inherits="Epicode_S3_L3_BackEnd.Gestione" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/Body.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" class="d-flex flex-column align-items-center" runat="server">
        <h1 class="mb-3 mt-3">Epicode Multisala</h1>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/imgs/cinema.png" Width="300px" CssClass="mb-3" />
        <div>
            <div class="row mb-3 d-flex justify-content-center">
                <div class="w-50">
                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Inserisci il tuo nome"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1"
                        ControlToValidate="TextBox1"
                        runat="server"
                        ForeColor="Red"
                        ErrorMessage="Nome obbligatorio">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="w-50">
                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Inserisci il tuo cognome"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2"
                        ControlToValidate="TextBox2"
                        ForeColor="Red"
                        runat="server"
                        ErrorMessage="Cognome obbligatorio">
                    </asp:RequiredFieldValidator>
                </div>
                <div class="w-50 d-flex justify-content-center align-items-center">
                    <label class="visually-hidden" for="select">Scegli la sala...</label>
                    <asp:DropDownList ID="autoSizingSelect" runat="server" class="form-select">
                        <asp:ListItem Text="Scegli la sala..." Value="autoSizingSelect" />
                        <asp:ListItem Text="SALA NORD" Value="1" />
                        <asp:ListItem Text="SALA SUD" Value="2" />
                        <asp:ListItem Text="SALA EST" Value="3" />
                    </asp:DropDownList>

                    <div class="col-auto mx-3">
                        <asp:CheckBox ID="autoSizingCheck" runat="server" CssClass="form-check-input" Text="Ridotto" />
                    </div>
                </div>
            </div>
            <div class="col-auto d-flex justify-content-center mb-3">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Prenota" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="container mt-5 border border-dark rounded d-flex flex-column justify-content-around align-items-center" style="width: 50em; height: 10em;">
            <h3>Informazioni utenti</h3>
            <div class="d-flex justify-content-center align-items-center border border-dark rounded" style="width: 30em; height: 2em;">
                <asp:Label ID="Label1" runat="server" Text="Biglietti venduti SALA NORD: 0, di cui ridotti: 0"></asp:Label>
            </div>
            <div class="d-flex justify-content-center align-items-center border border-dark rounded" style="width: 30em; height: 2em;">
                <asp:Label ID="Label2" runat="server" Text="Biglietti venduti SALA SUD: 0, di cui ridotti: 0"></asp:Label>
            </div>
            <div class="d-flex justify-content-center align-items-center border border-dark rounded" style="width: 30em; height: 2em;">
                <asp:Label ID="Label3" runat="server" Text="Biglietti venduti SALA EST: 0, di cui ridotti: 0"></asp:Label>
            </div>
        </div>
    </form>
</body>

</html>
