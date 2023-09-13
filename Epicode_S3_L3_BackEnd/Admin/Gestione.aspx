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
        <h1 class="mb-3 mt-3">Epicode Pizzeria</h1>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/imgs/pizza.png" Width="200px" CssClass="mb-3" />
        <div>
            <div class="row mb-3 d-flex justify-content-center">
                <div class="d-flex w-50 justify-content-center align-items-center">
                    <asp:DropDownList ID="autoSizingSelect" runat="server" class="form-select">
                        <asp:ListItem Text="Scegli la tua pizza..." Value="autoSizingSelect" />
                        <asp:ListItem Text="Pizza MARINARA" Value="1" />
                        <asp:ListItem Text="Pizza MARGHERITA" Value="2" />
                        <asp:ListItem Text="Pizza CAPRICCIOSA" Value="3" />
                        <asp:ListItem Text="Pizza DIAVOLA" Value="4" />
                    </asp:DropDownList>
                </div>
            </div>



            <div class=" col-12 mb-3 text-center">
                <asp:Label ID="Label4" runat="server" Text="Label">Extra</asp:Label>
                <div class="col-auto mx-3">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox2" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox3" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox4" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox5" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox6" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox7" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox8" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox9" runat="server" CssClass="form-check-input" />
                    <asp:CheckBox ID="CheckBox10" runat="server" CssClass="form-check-input" />
                </div>
            </div>

            <div class="col-auto d-flex justify-content-center mb-3">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Prenota" OnClick="Button1_Click"/>
            </div>
        </div>
        <div class="container mt-5 border border-dark rounded d-flex flex-column justify-content-around align-items-center" style="width: 50em; height: 10em;">
            <h3>Carrello</h3>
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
