<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsAziendePopUp.aspx.cs" Inherits="InsAziendePopUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>INSERIMENTO AZIENDE</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-sm">
            <asp:Label ID="lblRAGIONESOCIALE" class="form-label" runat="server" Text="Ragione Sociale"></asp:Label>
            <asp:TextBox ID="txtRAGIONESOCIALE" class="form-control" runat="server"></asp:TextBox>

        </div>
        <div class="col-sm">
            <asp:Label ID="lblINDIRIZZO" class="form-label" runat="server" Text="Indirizzo"></asp:Label>
            <asp:TextBox ID="txtINDIRIZZO" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblCITTA" class="form-label" runat="server" Text="Città"></asp:Label>
                <asp:TextBox ID="txtCITTA" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-sm-3">
                <asp:Label ID="lblCAP" class="form-label" runat="server" Text="CAP"></asp:Label>
                <asp:TextBox ID="txtCAP" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2">
                <asp:Label ID="lblPROVINCIA" class="form-label" runat="server" Text="Provincia"></asp:Label>
                <asp:TextBox ID="txtPROVINCIA" class="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="col-sm-5">
            <asp:Label ID="lblEMAIL" class="form-label" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEMAIL" class="form-control" runat="server"></asp:TextBox>

        </div>
        <div class="col-md-5">
            <asp:Label ID="lblTELEFONO" class="form-label" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="txtTELEFONO" class="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="col-md-5">
            <asp:Label ID="lblCODICEFISCALE" class="form-label" runat="server" Text="Codice Fiscale"></asp:Label>
            <asp:TextBox ID="txtCODICEFISCALE" class="form-control" runat="server"></asp:TextBox>

        </div>
        <div class="col-md-5">
            <asp:Label ID="lblPIVA" class="form-label" runat="server" Text="P.IVA"></asp:Label>
            <asp:TextBox ID="txtPIVA" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-5">
            <asp:Label ID="lblPEC" class="form-label" runat="server" Text="PEC"></asp:Label>
            <asp:TextBox ID="txtPEC" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-5">
            <asp:Label ID="lblCFE" class="form-label" runat="server" Text="CFE"></asp:Label>
            <asp:TextBox ID="txtCFE" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-5">
            <asp:Label ID="lblTITOLARE" class="form-label" runat="server" Text="Titolare"></asp:Label>
            <asp:TextBox ID="txtTITOLARE" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-5">
            <asp:Label ID="lblEMAILTITOLARE" class="form-label" runat="server" Text="Email Titolare"></asp:Label>
            <asp:TextBox ID="txtEMAILTITOLARE" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-5">
            <asp:Label ID="lblTELTITOLARE" class="form-label" runat="server" Text="Telefono Titolare"></asp:Label>
            <asp:TextBox ID="txtTELTITOLARE" class="form-control" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
