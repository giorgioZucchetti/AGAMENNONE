<%@ Page Language="C#" AutoEventWireup="true" CodeFile="POPUP_CLIENTI_Insert.aspx.cs" Inherits="POPUP_CLIENTI_Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>INSERIMENTO CLIENTE</title>
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="col-sm-2">
                <asp:Label ID="Label1" runat="server" class="form-label" Text="Ragione Sociale:"></asp:Label>
                <asp:TextBox ID="txtRagioneSociale" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2">
                <asp:Label ID="Label2" runat="server" class="form-label" Text="Indirizzo:"></asp:Label>
                <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="row">
                <div class="col-6">
                    <asp:Label ID="Label22" runat="server" class="form-label" Text="Citta:"></asp:Label>
                    <asp:TextBox ID="txtCitta" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-3">
                    <asp:Label ID="Label3" runat="server" class="form-label" Text="Cap:"></asp:Label>
                    <asp:TextBox ID="txtCap" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-2">
                    <asp:Label ID="Label4" runat="server" class="form-label" Text="Provincia:"></asp:Label>
                    <asp:TextBox ID="txtProvincia" class="form-control" Style="width: 65px" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-6">
                <asp:Label ID="Label5" runat="server" class="form-label" Text="Email:"></asp:Label>
                <asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
            </div>


            <div class="col-sm-6">
                <asp:Label ID="Label6" runat="server" class="form-label" Text="Telefono:"></asp:Label>
                <asp:TextBox ID="txtTelefono" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
            </div>

            <div class="row">
                <div class="col">
                    <asp:Label ID="Label7" runat="server" class="form-label" Text="Codice Fiscale:"></asp:Label>
                    <asp:TextBox ID="txtCodiceFiscale" class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="col">
                    <asp:Label ID="Label8" runat="server" class="form-label" Text="Partita Iva:"></asp:Label>
                    <asp:TextBox ID="txtPIva" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <asp:Label ID="Label9" runat="server" class="form-label" Text="Pec:"></asp:Label>
                    <asp:TextBox ID="txtPec" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-10">
                    <asp:Label ID="Label10" runat="server" class="form-label" Text="Cfe:"></asp:Label>
                    <asp:TextBox ID="txtCfe" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="col-sm-5">
                <asp:Label ID="Label11" runat="server" class="form-label" Text="Titolare:"></asp:Label>
                <asp:TextBox ID="txtTitolare" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-sm-5">
                <asp:Label ID="Label12" runat="server" class="form-label" Text="Email Titolare:"></asp:Label>
                <asp:TextBox ID="txtEmailTitolare" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="col-sm-5">
                <asp:Label ID="Label13" runat="server" class="form-label" Text="Tel. Titolare"></asp:Label>
                <asp:TextBox ID="txtTelTitolare" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
            </div>
            <div class="text-center mt-2">
                <asp:Button ID="btnInserisci" type="button" runat="server" Text="Inserisci" class="btn btn-primary" OnClick="btnInserisci_Click" />
            </div>

        </div>
    </form>
</body>
</html>
