<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsDipendentiModPopup.aspx.cs" Inherits="InsDipendentiModPopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                    <asp:Label ID="lblNOME" class="form-label" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txtNOME" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblCOGNOME" class="form-label" runat="server" Text="Cognome"></asp:Label>
                    <asp:TextBox ID="txtCOGNOME" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-2">
                <asp:Label ID="lblRAGIONESOCIALE" class="form-label" runat="server" Text="Ragione Sociale"></asp:Label>
                <asp:DropDownList ID="ddlRAGIONESOCIALE" class="btn-outline-primary" runat="server"></asp:DropDownList>
            </div>
            <div class="col-sm-2">
                <asp:Label ID="lblINDIRIZZO" class="form-label" runat="server" Text="Indirizzo"></asp:Label>
                <asp:TextBox ID="txtINDIRIZZO" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col-6">
                    <asp:Label ID="lblCITTA" class="form-label" runat="server" Text="Città"></asp:Label>
                    <asp:TextBox ID="txtCITTA" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-3">
                    <asp:Label ID="lblCAP" class="form-label" runat="server" Text="CAP"></asp:Label>
                    <asp:TextBox ID="txtCAP" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-2">
                    <asp:Label ID="lblPROVINCIA" class="form-label" runat="server" Text="Provincia"></asp:Label>
                    <asp:TextBox ID="txtPROVINCIA" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-sm-6">
                <asp:Label ID="lblEMAIL" class="form-label" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEMAIL" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="col-sm-6">
                <asp:Label ID="lblTELEFONO" class="form-label" runat="server" Text="Telefono"></asp:Label>
                <asp:TextBox ID="txtTELEFONO" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Label ID="lblRUOLO" class="form-label" runat="server" Text="Ruolo"></asp:Label>
                    <asp:DropDownList ID="ddlRUOLO" class="btn-outline-primary" runat="server"></asp:DropDownList>
                </div>
                <div class="col">
                    <asp:Label ID="lblCOSTOORARIO" class="form-label" runat="server" Text="Costo Orario"></asp:Label>
                    <asp:TextBox ID="txtCOSTOORARIO" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Label ID="lblDATAINIZIORAPPORTO" class="form-label" runat="server" Text="Data Inizio Rapporto"></asp:Label>
                    <asp:TextBox ID="txtDATAINIZIORAPPORTO" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:Label ID="lblDATAFINERAPPORTO" class="form-label" runat="server" Text="Data Fine Rapporto"></asp:Label>
                    <asp:TextBox ID="txtDATAFINERAPPORTO" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="text-center mt-2">
            <asp:Button ID="btnModifica" class="btn btn-primary" runat="server" Text="Modifica" />
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
