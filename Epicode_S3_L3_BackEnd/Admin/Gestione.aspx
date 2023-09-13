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
        <div class="d-flex">

            <div class="row mb-3 d-flex justify-content-center">
                <div class="d-flex w-50 justify-content-center align-items-center">
                    <asp:DropDownList ID="autoSizingSelect" runat="server" class="form-select"></asp:DropDownList>
                </div>

                <div class="col-12 mb-3 mt-3 text-center">
                    <asp:Label ID="Label4" runat="server" Text="Label">Extra</asp:Label>
                    <asp:CheckBoxList ID="CheckBoxList1" CssClass="d-flex flex-column align-items-center" runat="server"></asp:CheckBoxList>
                </div>

                <div class="d-flex justify-content-center mb-3 mt-3">
                    <asp:Button ID="Button1" class="btn btn-warning mx-3" runat="server" Text="Aggiungi" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" class="btn btn-success mx-3" runat="server" Text="Ordina" OnClick="Button2_Click" />
                </div>

            </div>
            <div class="container mt-5 border border-dark rounded d-flex flex-column justify-content-around align-items-center" style="width: 30em; height: 10em;">
                <h3>Carrello</h3>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <asp:Label ID="errore" Visible="false" ForeColor="Red" Font-Bold="true" runat="server" Text="Nessuna pizza selezionata"></asp:Label>
    </form>
</body>

</html>
